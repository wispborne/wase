import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wase/opening.dart';

class WaseShortcutBindings {
  static getShortcuts() {
    return Map.fromEntries([openDataShortcut].map((e) => MapEntry(e.key, e.action)));
  }

  static Shortcut openDataShortcut = Shortcut(SingleActivator(LogicalKeyboardKey.keyO, control: true), Opening().openChooseDataDialog);
}

class Shortcut {
  final SingleActivator key;
  final Function() action;

  const Shortcut(this.key, this.action);
}

// class WaseShortcuts {
//   static Map<LogicalKeySet, OpenDataIntent> getShortcuts() {
//     return {LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyO): const OpenDataIntent()};
//   }
// }
//
// class OpenDataIntent extends Intent {
//   const OpenDataIntent();
// }
//
// class OpenDataAction extends Action<OpenDataIntent> {
//   @override
//   Object? invoke(OpenDataIntent intent) {
//     FilePickerResult? files = FilePicker.platform.pickFiles(
//       dialogTitle: "Choose file",
//
//       // initialDirectory: "C:\\Program Files (x86)\\Fractal Softworks\\Starsector\\mods",
//     );
//
//     print(files?.files);
//     return null;
//   }
// }
