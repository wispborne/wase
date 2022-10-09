import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/opening.dart';
import 'package:wase/shortcuts.dart';

class WaseMenu extends ConsumerStatefulWidget {
  const WaseMenu({Key? key}) : super(key: key);

  @override
  ConsumerState<WaseMenu> createState() => _MenuState();
}

class _MenuState extends ConsumerState<WaseMenu> {
  @override
  Widget build(BuildContext context) {
    return MenuBar(children: [
      SubmenuButton(
        menuChildren: [
          const MenuItemButton(
            child: Text("Open mod folder"),
          ),
          MenuItemButton(
            onPressed: () => Opening().openChooseDataDialog(ref),
            shortcut: WaseShortcutBindings.openDataShortcut(ref).key,
            child: Text("Open data"),
          ),
        ],
        child: const MenuItemButton(child: Text("File")),
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
