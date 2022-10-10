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
}