import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:wase/loading/loaders.dart';
import 'package:wase/models/ship.dart';
import 'package:wase/settings.dart';

loadGameData(WidgetRef ref) async {
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
    loadVanillaData(gameDataPath);
  }
}

loadVanillaData(Directory gameDataPath) async {
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
  await loadShips(stockShipsDir);
  Fimber.d("Took ${shipTimer.elapsed}ms to load vanilla ships.");
}

Future<List<Ship>> loadShips(Directory folder) async {
  Fimber.i("Loading ships from $folder");
  return folder.list(recursive: true).where((event) => p.extension(event.path) == ".ship").asyncMap((file) async {
    Fimber.d("Loading ship ${file.path}");
    return loadShip(File(file.path));
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
