import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/appState.dart';
import 'package:wase/models/programMode.dart';
import 'package:wase/models/ship.dart';
import 'package:wase/settings.dart';

class Opening {
  openChooseDataDialog(WidgetRef ref) async {
    FilePickerResult? files = await FilePicker.platform.pickFiles(
      dialogTitle: "Choose file",
    );

    print(files?.files);
    var firstFile = files?.files.first.name;

    if (firstFile == null) {
      print("No files?");
    }

    var file = File(firstFile!);

    switch (ref.read(AppState.programMode)) {
      case ProgramMode.ship:
        loadShip(ref, file);
        break;
      case ProgramMode.variant:
        // TODO: Handle this case.
        break;
      case ProgramMode.skin:
        // TODO: Handle this case.
        break;
      case ProgramMode.csv:
        // TODO: Handle this case.
        break;
      case ProgramMode.csvWing:
        // TODO: Handle this case.
        break;
      case ProgramMode.weapon:
        // TODO: Handle this case.
        break;
      case ProgramMode.csvWeapon:
        // TODO: Handle this case.
        break;
    }

  }
}

void loadShip(WidgetRef ref, file) async {
  var json = jsonDecode(await file.readAsString());
  var ship = Ship.fromJson(json);
  Fimber.d("Loaded $ship");

  ref.read(appSettings.notifier).update((state) => state.copyWith(dataDir: file.parent.absolute.path));

  ref.read(AppState.ship.notifier).update((state) => ship);
  // ref.read(AppState.csvRow.notifier).update((state) => ship.hullId);
}
