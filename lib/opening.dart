import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/appState.dart';
import 'package:wase/models/ship.dart';

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

    var ship = Ship.fromJson(jsonDecode(await File(firstFile!).readAsString()));
    print("Loaded $ship");
    ref.read(AppState.ship.notifier).update((state) => ship);
  }
}
