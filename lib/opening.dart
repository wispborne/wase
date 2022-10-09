import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:wase/models/ship.dart';

class Opening {
  openChooseDataDialog() {
    openChooseDataDialogAsync();
  }

  openChooseDataDialogAsync() async {
    FilePickerResult? files = await FilePicker.platform.pickFiles(
      dialogTitle: "Choose file",

      // initialDirectory: "C:\\Program Files (x86)\\Fractal Softworks\\Starsector\\mods",
    );

    print(files?.files);
    var firstFile = files?.files.first.name;

    if (firstFile == null) {
      print("No files?");
    }

    print(Ship.fromJson(jsonDecode(await File(firstFile!).readAsString())));
  }
}
