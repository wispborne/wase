import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/models/ship.dart';
import 'package:wase/models/variant.dart';

Future<Ship?> loadShip(File file) async {
  return Ship.fromJson(jsonDecode(await file.readAsString()) as Map<String, dynamic>);
}

Future<Variant?> loadVariant(File file) async {
  return Variant.fromJson(jsonDecode(await file.readAsString()) as Map<String, dynamic>);
}