import 'package:json_annotation/json_annotation.dart';

part 'ship.g.dart';

@JsonSerializable()
class Ship {
  final List<double>? bounds;
  final List<double>? center;
  final double collisionRadius;
  final List<EngineSlot>? engineSlots;
  final double height;
  final double width;
  final String hullId;
  final String hullName;
  final String hullSize;
  final List<double>? shieldCenter;
  final double shieldRadius;
  final String spriteName;
  final String style;
  final double viewOffset;
  final List<ShipWeaponSlot>? weaponSlots;
  final Map<String, String> builtInWeapons;
  final List<String>? builtInMods;
  final String coversColor;
  final List<String>? builtInWings;
  final List<double>? moduleAnchor;

  const Ship(
      {this.bounds = const [],
      this.center,
      this.collisionRadius = 0,
      this.engineSlots,
      this.height = 0,
      this.width = 0,
      this.hullId = "",
      this.hullName = "",
      this.hullSize = "",
      this.shieldCenter = const [],
      this.shieldRadius = 0,
      this.spriteName = "",
      this.style = "",
      this.viewOffset = 0,
      this.weaponSlots = const [],
      this.builtInWeapons = const {},
      this.builtInMods = const [],
      this.coversColor = "",
      this.builtInWings = const [],
      this.moduleAnchor = const []});

  /// Connect the generated function to the `fromJson`
  /// factory.
  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);

  /// Connect the generated function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ShipToJson(this);

  @override
  String toString() {
    return 'Ship{bounds: $bounds, center: $center, collisionRadius: $collisionRadius, engineSlots: $engineSlots, height: $height, width: $width, hullId: $hullId, hullName: $hullName, hullSize: $hullSize, shieldCenter: $shieldCenter, shieldRadius: $shieldRadius, spriteName: $spriteName, style: $style, viewOffset: $viewOffset, weaponSlots: $weaponSlots, builtInWeapons: $builtInWeapons, builtInMods: $builtInMods, coversColor: $coversColor, builtInWings: $builtInWings, moduleAnchor: $moduleAnchor}';
  }
}

@JsonSerializable()
class EngineSlot {
  final List<double>? location;
  final double length;
  final double width;
  final double angle;
  final String style;
  final String? styleId;
  final EngineStyleSpec? styleSpec;
  final double contrailSize;

  EngineSlot(
      {this.location, this.length = 0, this.width = 0, this.angle = 0, this.style = "", this.styleId = "", this.styleSpec, this.contrailSize = 0});

  /// Connect the generated function to the `fromJson`
  /// factory.
  factory EngineSlot.fromJson(Map<String, dynamic> json) => _$EngineSlotFromJson(json);

  /// Connect the generated function to the `toJson` method.
  Map<String, dynamic> toJson() => _$EngineSlotToJson(this);

  @override
  String toString() {
    return 'EngineSlot{location: $location, length: $length, width: $width, angle: $angle, style: $style, styleId: $styleId, styleSpec: $styleSpec, contrailSize: $contrailSize}';
  }
}

@JsonSerializable()
class EngineStyleSpec {
  final String type;
  final String mode;
  final List<double>? engineColor;
  final List<double>? engineCampaignColor;
  final double contrailParticleSizeMult;
  final double contrailParticleFinalSizeMult;
  final double contrailParticleDuration;
  final double contrailMaxSpeedMult;
  final double contrailAngularVelocityMult;
  final List<double>? contrailColor;
  final List<double>? contrailCampaignColor;

  EngineStyleSpec(
      {this.type = "",
      this.mode = "",
      this.engineColor,
      this.engineCampaignColor,
      this.contrailParticleSizeMult = 0,
      this.contrailParticleFinalSizeMult = 0,
      this.contrailParticleDuration = 0,
      this.contrailMaxSpeedMult = 0,
      this.contrailAngularVelocityMult = 0,
      this.contrailColor,
      this.contrailCampaignColor});

  /// Connect the generated function to the `fromJson`
  /// factory.
  factory EngineStyleSpec.fromJson(Map<String, dynamic> json) => _$EngineStyleSpecFromJson(json);

  /// Connect the generated function to the `toJson` method.
  Map<String, dynamic> toJson() => _$EngineStyleSpecToJson(this);

  @override
  String toString() {
    return 'EngineStyleSpec{type: $type, mode: $mode, engineColor: $engineColor, engineCampaignColor: $engineCampaignColor, contrailParticleSizeMult: $contrailParticleSizeMult, contrailParticleFinalSizeMult: $contrailParticleFinalSizeMult, contrailParticleDuration: $contrailParticleDuration, contrailMaxSpeedMult: $contrailMaxSpeedMult, contrailAngularVelocityMult: $contrailAngularVelocityMult, contrailColor: $contrailColor, contrailCampaignColor: $contrailCampaignColor}';
  }
}

@JsonSerializable()
class ShipWeaponSlot {
  final double angle;
  final double arc;
  final String id;
  final List<double> locations;
  final List<double> position;
  final String mount;
  final String size;
  final String type;
  final double? renderOrderMod;

  ShipWeaponSlot(
      {this.angle = 0,
      this.arc = 0,
      this.id = "",
      this.locations = const [],
      this.position = const [],
      this.mount = "",
      this.size = "",
      this.type = "",
      this.renderOrderMod});

  /// Connect the generated function to the `fromJson`
  /// factory.
  factory ShipWeaponSlot.fromJson(Map<String, dynamic> json) => _$ShipWeaponSlotFromJson(json);

  /// Connect the generated function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ShipWeaponSlotToJson(this);

  @override
  String toString() {
    return 'ShipWeaponSlot{angle: $angle, arc: $arc, id: $id, locations: $locations, position: $position, mount: $mount, size: $size, type: $type, renderOrderMod: $renderOrderMod}';
  }
}
