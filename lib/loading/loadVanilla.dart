import 'dart:ffi';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ktx/ktx.dart';
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
import '../models/weapon.dart';

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
  final variantsDirs =
      ["data/variants/", "data/variants/fighters/", "data/variants/drones/"].map((it) => Directory(p.join(path, it)));
  final stockSkinsDir = Directory(p.join(path, "data/hulls/skins/"));
  final stockWeaponsDir = Directory(p.join(path, "data/weapons/"));
  final stockHullmodsDir = Directory(p.join(path, "data/hullmods/"));
  final stockConfigDir = Directory(p.join(path, "data/config/"));

  //// Load everything
  final shipTimer = Stopwatch()..start();
  final shipsFuture = loadShips(stockShipsDir)
    ..then((value) => Fimber.i("Took ${shipTimer.elapsed}ms to load ${value.length} vanilla ships."));

  final variantsFutures = variantsDirs.map((dir) {
    final variantTimer = Stopwatch()..start();
    return loadVariants(dir)
      ..then((value) => Fimber.i("Took ${variantTimer.elapsed}ms to load ${value.length} vanilla variants from $dir."));
  });

  final shipSkinTimer = Stopwatch()..start();
  final shipSkinsFuture = loadShipSkins(stockSkinsDir)
    ..then((value) =>
        Fimber.i("Took ${shipSkinTimer.elapsed}ms to load ${value.length} vanilla ship skins from $stockSkinsDir."));

  final weaponsTimer = Stopwatch()..start();
  final weaponsFuture = loadWeapons(stockWeaponsDir)
    ..then((value) =>
        Fimber.i("Took ${weaponsTimer.elapsed}ms to load ${value.length} vanilla weapons from $stockWeaponsDir."));

  //// Process loaded stuff
  // Add ship skins
  final shipSkins = await shipSkinsFuture;
  ref.read(AppState.vanillaSkinsByHullId.notifier).update((state) => cacheShipSkins((shipSkins).toList()));
  ref.read(AppState.vanillaHullSkinsAssoc.notifier).update((state) => groupSkinHullIdsByHullId((shipSkins).toList()));

  // Add variants
  final variants = (await Future.wait(variantsFutures)).flatten().whereType<Variant>().toList(growable: false);
  ref.read(AppState.vanillaVariantsByVariantId.notifier).update((state) => variants.associateBy((it) => it.variantId));

  // Add ships
  var ships = (await shipsFuture).whereType<Ship>().toList();
  ref.read(AppState.vanillaShipsByHullId.notifier).update((state) => ships.associateBy((x) => x.hullId));
  // Add ship-related enums
  var enums = generateShipEnums(ships);
  ref.read(AppState.enums.notifier).update((state) => state..addAll(enums));
  // Add variant weapon groups to enums.
  ref.read(AppState.enums.notifier).update((state) => state
    ..addAll({"variant.weaponGroup.mode": variants.expand((it) => it.weaponGroups).map((it) => it.mode).toSet()}));

  // Add weapons
  final weapons = (await weaponsFuture).whereType<Weapon>().toList(growable: false);
  ref.read(AppState.weaponsById.notifier).update((state) => weapons.associateBy((it) => it.id));

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

Map<String, Set<String>> groupSkinHullIdsByHullId(List<ShipSkin> skins) {
  final skinHullIdsByHull = <String, Set<String>>{};

  for (var skin in skins) {
    if (skin.baseHullId != null && skin.skinHullId != null) {
      if (skinHullIdsByHull[skin.baseHullId!] == null) {
        skinHullIdsByHull[skin.baseHullId!] = <String>{};
      }

      skinHullIdsByHull[skin.baseHullId!]!.add(skin.skinHullId!);
    }
  }

  return skinHullIdsByHull;
}

Map<String, Set<String>> generateShipEnums(List<Ship> ships) {
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

/// `load_stock_ship`
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

/// `load_stock_variant`
Future<List<Variant?>> loadVariants(Directory folder) async {
  Fimber.i("Loading variants from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".variant").take(5).asyncMap((file) async {
    Fimber.d("Loading variant ${file.path}");
    return loadVariant(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
}

/// `load_stock_skin`
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

/// `load_stock_weapon`
Future<List<Weapon?>> loadWeapons(Directory folder) async {
  Fimber.i("Loading weapons from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".wpn").asyncMap((file) async {
    Fimber.d("Loading variant ${file.path}");
    return loadWeapon(File(file.path)).onError((error, stackTrace) {
      Fimber.w("Failed to load ${file.path}", ex: error, stacktrace: stackTrace);
      return Future.value(null);
    });
  }).toList();
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
