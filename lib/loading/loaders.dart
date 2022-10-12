import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:wase/models/ship.dart';
import 'package:wase/models/variant.dart';
import 'package:yaml/yaml.dart';

Future<Ship?> loadShip(File file) async {
  return Ship.fromJson(jsonDecode(await file.readAsString()) as Map<String, dynamic>);
}

Future<Variant?> loadVariant(File file) async {
  //Variant.fromJson(jsonDecode() as Map<String, dynamic>);
  var jsonEncodedYaml = json.encode(loadYaml(await file.readAsString()));
  Fimber.v(jsonEncodedYaml);
  return Variant.fromJson(jsonDecode(jsonEncodedYaml) as Map<String, dynamic>);
}
