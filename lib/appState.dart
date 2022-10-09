import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/models/Models.dart';
import 'package:wase/models/ship.dart';

// final appState = StateProvider((ref) => AppState());

abstract class AppState {
  static final programMode = StateProvider<ProgramMode>((ref) => ProgramMode.ship);
  static final mode = StateProvider<String>((ref) => "null");
  static final boundsSymmetrical = StateProvider<bool>((ref) => true);
  static final selectedZoomLevel = StateProvider<double>((ref) => 3);
  static final showHelp = StateProvider<bool>((ref) => true);
  static final ship = StateProvider<Ship?>((ref) => null);
}
