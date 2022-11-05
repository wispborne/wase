import 'dart:ffi';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:wase/appState.dart';
import 'package:wase/loading/loaders.dart';
import 'package:wase/models/settings.dart';
import 'package:wase/models/ship.dart';
import 'package:wase/models/variant.dart';
import 'package:wase/utils.dart';

import '../models/shipEngineSlot.dart';
import '../models/shipSkin.dart';
import '../models/shipWeaponSlot.dart';

void loadGameData(WidgetRef ref) async {
  var settings = ref.read(appSettings);
  final gameDir = settings.gameDir ?? defaultGamePath();

  Fimber.d("Stored path: $gameDir");

  if (gameDir == null || !Directory(gameDir).existsSync()) {
    throw Exception("couldn't find starsector");
  } else if (settings.gameDir == null) {
    // Set state to default path because it exists.
    ref.read(appSettings.notifier).update((state) => state.copyWith(gameDir: defaultGamePath()));
  }

  if (settings.hideVanillaData != true) {
    var gameDataPath = Directory(p.join(gameDir, gameFilesRelPath()));
    Fimber.i("Starting to load vanilla data from ${gameDataPath.path}.");
    loadVanillaData(gameDataPath, ref);
  }
}

void loadVanillaData(Directory gameDataPath, WidgetRef ref) async {
  final path = gameDataPath.path;
  final stockShipsDir = Directory(p.join(path, "data/hulls/"));
  final stockVariantsDir = Directory(p.join(path, "data/variants/"));
  final stockVariantsFightersDir = Directory(p.join(path, "data/variants/fighters/"));
  final stockVariantsDronesDir = Directory(p.join(path, "data/variants/drones/"));
  final stockSkinsDir = Directory(p.join(path, "data/hulls/skins/"));
  final stockWeaponsDir = Directory(p.join(path, "data/weapons/"));
  final stockHullmodsDir = Directory(p.join(path, "data/hullmods/"));
  final stockConfigDir = Directory(p.join(path, "data/config/"));

  final shipTimer = Stopwatch()..start();
  final ships = loadShips(stockShipsDir)
    ..then((value) => Fimber.i("Took ${shipTimer.elapsed}ms to load ${value.length} vanilla ships."));

  final variantTimer = Stopwatch()..start();
  loadVariants(stockVariantsDir).then((value) =>
      Fimber.i("Took ${variantTimer.elapsed}ms to load ${value.length} vanilla variants from $stockVariantsDir."));

  final fighterVariantTimer = Stopwatch()..start();
  loadVariants(stockVariantsFightersDir).then((value) => Fimber.i(
      "Took ${fighterVariantTimer.elapsed}ms to load ${value.length} vanilla variants from $stockVariantsFightersDir."));

  final droneVariantTimer = Stopwatch()..start();
  loadVariants(stockVariantsDronesDir).then((value) => Fimber.i(
      "Took ${droneVariantTimer.elapsed}ms to load ${value.length} vanilla variants from $stockVariantsDronesDir."));

  final shipSkinTimer = Stopwatch()..start();
  final shipSkinsFuture = loadShipSkins(stockSkinsDir).then((value) {
    Fimber.i("Took ${shipSkinTimer.elapsed}ms to load ${value.length} vanilla ship skins from $stockSkinsDir.");
    return value;
  });

  final shipSkins = await shipSkinsFuture;
  ref.read(AppState.vanillaSkinsByHullId.notifier).update((state) => cacheShipSkins((shipSkins).toList()));

  var enums = cacheShipEnums((await ships).whereType<Ship>().toList());
  ref.read(AppState.enums.notifier).update((state) => enums);

  Fimber.i("Loaded enums: $enums");
}

Map<String, Set<ShipSkin>> cacheShipSkins(List<ShipSkin> skins) {
  final skinsByHull = <String, Set<ShipSkin>>{};

  for (var skin in skins) {
    if (skin.skinHullId != null) {
      if (skinsByHull[skin.skinHullId!] == null) {
        skinsByHull[skin.skinHullId!] = <ShipSkin>{};
      }

      skinsByHull[skin.skinHullId!]!.add(skin);
    }
  }

  return skinsByHull;
}

Map<String, Set<String>> cacheShipEnums(List<Ship> ships) {
  final Map<String, Set<String>> enums = {};

  for (Ship ship in ships) {
    try {
      enums.createAndAdd("ship.hullSize", ship.hullSize);
      enums.createAndAdd("ship.style", ship.style);

      for (ShipWeaponSlot wSlot in ship.weaponSlots ?? []) {
        enums.createAndAdd("ship.weapon.mount", wSlot.mount);
        enums.createAndAdd("ship.weapon.size", wSlot.size);
        enums.createAndAdd("ship.weapon.type", wSlot.type);
      }

      for (EngineSlot eSlot in ship.engineSlots ?? []) {
        enums.createAndAdd("ship.engine.style", eSlot.style);
        if (eSlot.styleSpec != null) {
          enums.createAndAdd("ship.engine.styleSpec.type", eSlot.styleSpec!.type);
        }
      }
    } catch (e) {
      Fimber.e("Failed to load $ship", ex: e);
    }
  }

  return enums;
}

Future<List<Ship?>> loadShips(Directory folder) async {
  Fimber.i("Loading ships from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".ship").asyncMap((file) async {
    Fimber.d("Loading ship ${file.path}");
    return loadShip(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
}

Future<List<Variant?>> loadVariants(Directory folder) async {
  Fimber.i("Loading variants from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".variant").asyncMap((file) async {
    Fimber.d("Loading variant ${file.path}");
    return loadVariant(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
}

Future<List<ShipSkin>> loadShipSkins(Directory folder) async {
  Fimber.i("Loading ship skins from $folder");
  return folder
      .list(recursive: true)
      .where((event) => p.extension(event.path) == ".skin")
      .asyncMap((file) async {
        Fimber.d("Loading ship skin ${file.path}");
        return loadShipSkin(File(file.path)).onError((error, stackTrace) {
          Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
          return Future.value(null);
        });
      })
      .where((skin) => skin != null)
      .map((skin) => skin!)
      .toList();
}

String? defaultGamePath() {
  if (Platform.isWindows) {
    // todo read from registry
    return "C:/Program Files (x86)/Fractal Softworks/Starsector";
  } else if (Platform.isMacOS) {
    return "/Applications/Starsector.app";
  } else if (kIsWeb) {
    return null; // huh
  }

  return null;
}

String gameFilesRelPath() {
  if (Platform.isWindows) {
    return "starsector-core";
  } else if (Platform.isMacOS) {
    return "Contents/Resources/Java";
  } else if (kIsWeb) {
    return "null"; // huh
  }

  return "null";
}
