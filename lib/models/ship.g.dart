// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ship _$ShipFromJson(Map<String, dynamic> json) => Ship(
      bounds: (json['bounds'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      center: (json['center'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      collisionRadius: (json['collisionRadius'] as num?)?.toDouble() ?? 0,
      engineSlots: (json['engineSlots'] as List<dynamic>?)
          ?.map((e) => EngineSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num?)?.toDouble() ?? 0,
      width: (json['width'] as num?)?.toDouble() ?? 0,
      hullId: json['hullId'] as String? ?? "",
      hullName: json['hullName'] as String? ?? "",
      hullSize: json['hullSize'] as String? ?? "",
      shieldCenter: (json['shieldCenter'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      shieldRadius: (json['shieldRadius'] as num?)?.toDouble() ?? 0,
      spriteName: json['spriteName'] as String? ?? "",
      style: json['style'] as String? ?? "",
      viewOffset: (json['viewOffset'] as num?)?.toDouble() ?? 0,
      weaponSlots: (json['weaponSlots'] as List<dynamic>?)
              ?.map((e) => ShipWeaponSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      builtInWeapons: (json['builtInWeapons'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      builtInMods: (json['builtInMods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      coversColor: json['coversColor'] as String? ?? "",
      builtInWings: (json['builtInWings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      moduleAnchor: (json['moduleAnchor'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ShipToJson(Ship instance) => <String, dynamic>{
      'bounds': instance.bounds,
      'center': instance.center,
      'collisionRadius': instance.collisionRadius,
      'engineSlots': instance.engineSlots,
      'height': instance.height,
      'width': instance.width,
      'hullId': instance.hullId,
      'hullName': instance.hullName,
      'hullSize': instance.hullSize,
      'shieldCenter': instance.shieldCenter,
      'shieldRadius': instance.shieldRadius,
      'spriteName': instance.spriteName,
      'style': instance.style,
      'viewOffset': instance.viewOffset,
      'weaponSlots': instance.weaponSlots,
      'builtInWeapons': instance.builtInWeapons,
      'builtInMods': instance.builtInMods,
      'coversColor': instance.coversColor,
      'builtInWings': instance.builtInWings,
      'moduleAnchor': instance.moduleAnchor,
    };

EngineSlot _$EngineSlotFromJson(Map<String, dynamic> json) => EngineSlot(
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      length: (json['length'] as num?)?.toDouble() ?? 0,
      width: (json['width'] as num?)?.toDouble() ?? 0,
      angle: (json['angle'] as num?)?.toDouble() ?? 0,
      style: json['style'] as String? ?? "",
      styleId: json['styleId'] as String? ?? "",
      styleSpec: json['styleSpec'] == null
          ? null
          : EngineStyleSpec.fromJson(json['styleSpec'] as Map<String, dynamic>),
      contrailSize: (json['contrailSize'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$EngineSlotToJson(EngineSlot instance) =>
    <String, dynamic>{
      'location': instance.location,
      'length': instance.length,
      'width': instance.width,
      'angle': instance.angle,
      'style': instance.style,
      'styleId': instance.styleId,
      'styleSpec': instance.styleSpec,
      'contrailSize': instance.contrailSize,
    };

EngineStyleSpec _$EngineStyleSpecFromJson(Map<String, dynamic> json) =>
    EngineStyleSpec(
      type: json['type'] as String? ?? "",
      mode: json['mode'] as String? ?? "",
      engineColor: (json['engineColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      engineCampaignColor: (json['engineCampaignColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      contrailParticleSizeMult:
          (json['contrailParticleSizeMult'] as num?)?.toDouble() ?? 0,
      contrailParticleFinalSizeMult:
          (json['contrailParticleFinalSizeMult'] as num?)?.toDouble() ?? 0,
      contrailParticleDuration:
          (json['contrailParticleDuration'] as num?)?.toDouble() ?? 0,
      contrailMaxSpeedMult:
          (json['contrailMaxSpeedMult'] as num?)?.toDouble() ?? 0,
      contrailAngularVelocityMult:
          (json['contrailAngularVelocityMult'] as num?)?.toDouble() ?? 0,
      contrailColor: (json['contrailColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      contrailCampaignColor: (json['contrailCampaignColor'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$EngineStyleSpecToJson(EngineStyleSpec instance) =>
    <String, dynamic>{
      'type': instance.type,
      'mode': instance.mode,
      'engineColor': instance.engineColor,
      'engineCampaignColor': instance.engineCampaignColor,
      'contrailParticleSizeMult': instance.contrailParticleSizeMult,
      'contrailParticleFinalSizeMult': instance.contrailParticleFinalSizeMult,
      'contrailParticleDuration': instance.contrailParticleDuration,
      'contrailMaxSpeedMult': instance.contrailMaxSpeedMult,
      'contrailAngularVelocityMult': instance.contrailAngularVelocityMult,
      'contrailColor': instance.contrailColor,
      'contrailCampaignColor': instance.contrailCampaignColor,
    };

ShipWeaponSlot _$ShipWeaponSlotFromJson(Map<String, dynamic> json) =>
    ShipWeaponSlot(
      angle: (json['angle'] as num?)?.toDouble() ?? 0,
      arc: (json['arc'] as num?)?.toDouble() ?? 0,
      id: json['id'] as String? ?? "",
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      position: (json['position'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      mount: json['mount'] as String? ?? "",
      size: json['size'] as String? ?? "",
      type: json['type'] as String? ?? "",
      renderOrderMod: (json['renderOrderMod'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ShipWeaponSlotToJson(ShipWeaponSlot instance) =>
    <String, dynamic>{
      'angle': instance.angle,
      'arc': instance.arc,
      'id': instance.id,
      'locations': instance.locations,
      'position': instance.position,
      'mount': instance.mount,
      'size': instance.size,
      'type': instance.type,
      'renderOrderMod': instance.renderOrderMod,
    };
