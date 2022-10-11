import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/models/programMode.dart';
import 'package:wase/models/ship.dart';

// final appState = StateProvider((ref) => AppState());

abstract class AppState {
  static final programMode = StateProvider((ref) => ProgramMode.ship);
  static final mode = StateProvider((ref) => "null");
  static final boundsSymmetrical = StateProvider((ref) => true);
  static final selectedZoomLevel = StateProvider((ref) => 3);
  static final showHelp = StateProvider((ref) => true);

  static final ship = StateProvider<Ship?>((ref) => null);
  static final csvRow = StateProvider<Map<String, String>>((ref) => {});

  /// When loading vanilla data, save all enums so they can be shown as dropdowns in the UI later.
  static final enums = StateProvider<Map<String, Set<String>>>((ref) => {});
}

extension SetAdding on Map<String, Set<String>> {
  void createAndAdd(String key, String newValue) {
    if (containsKey(key)) {
      this[key]!.add(newValue);
    } else {
      this[key] = {newValue};
    }
  }
}
