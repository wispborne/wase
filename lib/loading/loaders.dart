import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wase/models/ship.dart';

Future<Ship> loadShip(File file) async {
  var json = jsonDecode(await file.readAsString());
  return Ship.fromJson(json);
}
