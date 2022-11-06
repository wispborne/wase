import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/models/programMode.dart';
import 'package:wase/models/ship.dart';
import 'package:wase/models/shipSkin.dart';
import 'package:wase/models/variant.dart';

// final appState = StateProvider((ref) => AppState());

abstract class AppState {
  static final programMode = StateProvider((ref) => ProgramMode.ship);
  static final mode = StateProvider((ref) => "null");
  static final boundsSymmetrical = StateProvider((ref) => true);
  static final selectedZoomLevel = StateProvider((ref) => 3);
  static final showHelp = StateProvider((ref) => true);

  static final ship = StateProvider<Ship?>((ref) => null);
  static final csvRow = StateProvider<Map<String, String>>((ref) => {});

  /// `stock_ships`
  static final vanillaShipsByHullId = StateProvider<Map<String, Ship>>((ref) => {});
  /// `stock_variants`
  static final vanillaVariantsByVariantId = StateProvider<Map<String, Variant>>((ref) => {});
  /// When loading vanilla data, save all enums so they can be shown as dropdowns in the UI later.
  static final enums = StateProvider<Map<String, Set<String>>>((ref) => {});
  /// `stock_skins_variants_assoc`: `<String,TList>`   skinHullId --> TList of variantIds (referencing the hullId, not knowing it is a skinHullId)
  static final vanillaSkinsByHullId = StateProvider<Map<String, Set<ShipSkin>>>((ref) => {});
  /// Groups skin `skinHullId` by the hull id.
  /// `stock_hull_skins_assoc`: `<String,TList>`   hullId --> TList of skinHullIds (referencing the hullId)
  static final vanillaHullSkinsAssoc = StateProvider<Map<String, Set<String>>>((ref) => {});
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