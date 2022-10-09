import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class WaseMenu extends StatefulWidget {
  const WaseMenu({Key? key}) : super(key: key);

  @override
  State<WaseMenu> createState() => _MenuState();
}

class _MenuState extends State<WaseMenu> {
  @override
  Widget build(BuildContext context) {
    return MenuBar(children: [
      SubmenuButton(
        child: MenuItemButton(child: Text("File")),
        menuChildren: [
          MenuItemButton(
            child: Text("Open mod folder"),
          ),
          MenuItemButton(child: Text("Open data")),
        ],
      )
    ]);
  }
}

chooseModFolder() async {
  String? dir = await FilePicker.platform.getDirectoryPath(
    dialogTitle: "Choose mod folder",
    initialDirectory: "C:\\Program Files (x86)\\Fractal Softworks\\Starsector\\mods",
  );

  print(dir);
}

chooseEntity() async {
  FilePickerResult? files = await FilePicker.platform.pickFiles(
    dialogTitle: "Choose file",

    // initialDirectory: "C:\\Program Files (x86)\\Fractal Softworks\\Starsector\\mods",
  );

  print(files?.files);
}
