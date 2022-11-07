// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../models/weapon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weapon _$WeaponFromJson(Map<String, dynamic> json) {
  return _Weapon.fromJson(json);
}

/// @nodoc
mixin _$Weapon {
// there are only two type of weapon for now.
// specClass = projectile Or specClass = beam
// essential to both
  String get id => throw _privateConstructorUsedError;
  String? get specClass => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get turretSprite => throw _privateConstructorUsedError;
  String? get hardpointSprite => throw _privateConstructorUsedError;
  List<double>? get turretOffsets => throw _privateConstructorUsedError;
  List<double>? get turretAngleOffsets => throw _privateConstructorUsedError;
  List<double>? get hardpointOffsets => throw _privateConstructorUsedError;
  List<double>? get hardpointAngleOffsets => throw _privateConstructorUsedError;
  List<double>? get glowColor =>
      throw _privateConstructorUsedError; // essential to projectile
  String? get projectileSpecId => throw _privateConstructorUsedError;
  String? get barrelMode =>
      throw _privateConstructorUsedError; // essential to beam
  List<double>? get fringeColor => throw _privateConstructorUsedError;
  List<double>? get coreColor => throw _privateConstructorUsedError;

  /// Enum or `Set<String>`
  dynamic get textureType =>
      throw _privateConstructorUsedError; // TEnum or TString[]
// optional
  String? get mountTypeOverride =>
      throw _privateConstructorUsedError; // 0.95.1 new
  String? get turretUnderSprite => throw _privateConstructorUsedError;
  String? get turretGunSprite => throw _privateConstructorUsedError;
  String? get turretGlowSprite => throw _privateConstructorUsedError;
  String? get hardpointUnderSprite => throw _privateConstructorUsedError;
  String? get hardpointGunSprite => throw _privateConstructorUsedError;
  String? get hardpointGlowSprite => throw _privateConstructorUsedError;
  String? get fireSoundOne => throw _privateConstructorUsedError;
  String? get fireSoundTwo => throw _privateConstructorUsedError;
  String? get everyFrameEffect => throw _privateConstructorUsedError;
  bool? get animateWhileFiring => throw _privateConstructorUsedError;
  @BoolConverter()
  bool? get alwaysAnimate => throw _privateConstructorUsedError;
  int? get numFrames => throw _privateConstructorUsedError;
  double? get frameRate => throw _privateConstructorUsedError;
  Set<String>? get renderHints => throw _privateConstructorUsedError;
  bool? get renderBelowAllWeapons => throw _privateConstructorUsedError;
  bool? get renderAboveAllWeapons => throw _privateConstructorUsedError;
  bool? get showDamageWhenDecorative => throw _privateConstructorUsedError;
  double? get displayArcRadius =>
      throw _privateConstructorUsedError; // default is 250 but meh
  double? get specialWeaponGlowHeight =>
      throw _privateConstructorUsedError; // default is 0 but meh
  double? get specialWeaponGlowWidth =>
      throw _privateConstructorUsedError; // default is 0 but meh
// optional, projectile only
  String? get animationType => throw _privateConstructorUsedError;
  double? get visualRecoil => throw _privateConstructorUsedError;
  bool? get separateRecoilForLinkedBarrels =>
      throw _privateConstructorUsedError;
  bool? get interruptibleBurst => throw _privateConstructorUsedError;
  bool? get autocharge => throw _privateConstructorUsedError;
  bool? get requiresFullCharge => throw _privateConstructorUsedError;
  WeaponMuzzleFlashSpec? get muzzleFlashSpec =>
      throw _privateConstructorUsedError;
  WeaponSmokeSpec? get smokeSpec => throw _privateConstructorUsedError;
  bool? get noImpactSounds => throw _privateConstructorUsedError;
  bool? get noShieldImpactSounds => throw _privateConstructorUsedError;
  bool? get noNonShieldImpactSounds => throw _privateConstructorUsedError;
  bool? get unaffectedByProjectileSpeedBonuses =>
      throw _privateConstructorUsedError; // 0.95 new
// optional, beam only
  String? get beamEffect => throw _privateConstructorUsedError;
  bool? get beamFireOnlyOnFullCharge => throw _privateConstructorUsedError;
  bool? get convergeOnPoint => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get textureScrollSpeed => throw _privateConstructorUsedError;
  double? get pixelsPerTexel => throw _privateConstructorUsedError;
  double? get hitGlowRadius => throw _privateConstructorUsedError;
  bool? get darkCore => throw _privateConstructorUsedError;
  int? get darkFringeIter => throw _privateConstructorUsedError; // 0.95 new
  int? get darkCoreIter => throw _privateConstructorUsedError; // 0.95 new
  double? get coreWidthMult => throw _privateConstructorUsedError; // 0.95 new
  String? get collisionClass => throw _privateConstructorUsedError;
  String? get collisionClassByFighter => throw _privateConstructorUsedError;
  Set<String>? get pierceSet => throw _privateConstructorUsedError;
  bool get autofire => throw _privateConstructorUsedError;
  String get mode => throw _privateConstructorUsedError;
  Map<String, String> get weapons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponCopyWith<Weapon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponCopyWith<$Res> {
  factory $WeaponCopyWith(Weapon value, $Res Function(Weapon) then) =
      _$WeaponCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? specClass,
      String? type,
      String? size,
      String? turretSprite,
      String? hardpointSprite,
      List<double>? turretOffsets,
      List<double>? turretAngleOffsets,
      List<double>? hardpointOffsets,
      List<double>? hardpointAngleOffsets,
      List<double>? glowColor,
      String? projectileSpecId,
      String? barrelMode,
      List<double>? fringeColor,
      List<double>? coreColor,
      dynamic textureType,
      String? mountTypeOverride,
      String? turretUnderSprite,
      String? turretGunSprite,
      String? turretGlowSprite,
      String? hardpointUnderSprite,
      String? hardpointGunSprite,
      String? hardpointGlowSprite,
      String? fireSoundOne,
      String? fireSoundTwo,
      String? everyFrameEffect,
      bool? animateWhileFiring,
      @BoolConverter() bool? alwaysAnimate,
      int? numFrames,
      double? frameRate,
      Set<String>? renderHints,
      bool? renderBelowAllWeapons,
      bool? renderAboveAllWeapons,
      bool? showDamageWhenDecorative,
      double? displayArcRadius,
      double? specialWeaponGlowHeight,
      double? specialWeaponGlowWidth,
      String? animationType,
      double? visualRecoil,
      bool? separateRecoilForLinkedBarrels,
      bool? interruptibleBurst,
      bool? autocharge,
      bool? requiresFullCharge,
      WeaponMuzzleFlashSpec? muzzleFlashSpec,
      WeaponSmokeSpec? smokeSpec,
      bool? noImpactSounds,
      bool? noShieldImpactSounds,
      bool? noNonShieldImpactSounds,
      bool? unaffectedByProjectileSpeedBonuses,
      String? beamEffect,
      bool? beamFireOnlyOnFullCharge,
      bool? convergeOnPoint,
      double? width,
      double? textureScrollSpeed,
      double? pixelsPerTexel,
      double? hitGlowRadius,
      bool? darkCore,
      int? darkFringeIter,
      int? darkCoreIter,
      double? coreWidthMult,
      String? collisionClass,
      String? collisionClassByFighter,
      Set<String>? pierceSet,
      bool autofire,
      String mode,
      Map<String, String> weapons});

  $WeaponMuzzleFlashSpecCopyWith<$Res>? get muzzleFlashSpec;
  $WeaponSmokeSpecCopyWith<$Res>? get smokeSpec;
}

/// @nodoc
class _$WeaponCopyWithImpl<$Res> implements $WeaponCopyWith<$Res> {
  _$WeaponCopyWithImpl(this._value, this._then);

  final Weapon _value;
  // ignore: unused_field
  final $Res Function(Weapon) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? specClass = freezed,
    Object? type = freezed,
    Object? size = freezed,
    Object? turretSprite = freezed,
    Object? hardpointSprite = freezed,
    Object? turretOffsets = freezed,
    Object? turretAngleOffsets = freezed,
    Object? hardpointOffsets = freezed,
    Object? hardpointAngleOffsets = freezed,
    Object? glowColor = freezed,
    Object? projectileSpecId = freezed,
    Object? barrelMode = freezed,
    Object? fringeColor = freezed,
    Object? coreColor = freezed,
    Object? textureType = freezed,
    Object? mountTypeOverride = freezed,
    Object? turretUnderSprite = freezed,
    Object? turretGunSprite = freezed,
    Object? turretGlowSprite = freezed,
    Object? hardpointUnderSprite = freezed,
    Object? hardpointGunSprite = freezed,
    Object? hardpointGlowSprite = freezed,
    Object? fireSoundOne = freezed,
    Object? fireSoundTwo = freezed,
    Object? everyFrameEffect = freezed,
    Object? animateWhileFiring = freezed,
    Object? alwaysAnimate = freezed,
    Object? numFrames = freezed,
    Object? frameRate = freezed,
    Object? renderHints = freezed,
    Object? renderBelowAllWeapons = freezed,
    Object? renderAboveAllWeapons = freezed,
    Object? showDamageWhenDecorative = freezed,
    Object? displayArcRadius = freezed,
    Object? specialWeaponGlowHeight = freezed,
    Object? specialWeaponGlowWidth = freezed,
    Object? animationType = freezed,
    Object? visualRecoil = freezed,
    Object? separateRecoilForLinkedBarrels = freezed,
    Object? interruptibleBurst = freezed,
    Object? autocharge = freezed,
    Object? requiresFullCharge = freezed,
    Object? muzzleFlashSpec = freezed,
    Object? smokeSpec = freezed,
    Object? noImpactSounds = freezed,
    Object? noShieldImpactSounds = freezed,
    Object? noNonShieldImpactSounds = freezed,
    Object? unaffectedByProjectileSpeedBonuses = freezed,
    Object? beamEffect = freezed,
    Object? beamFireOnlyOnFullCharge = freezed,
    Object? convergeOnPoint = freezed,
    Object? width = freezed,
    Object? textureScrollSpeed = freezed,
    Object? pixelsPerTexel = freezed,
    Object? hitGlowRadius = freezed,
    Object? darkCore = freezed,
    Object? darkFringeIter = freezed,
    Object? darkCoreIter = freezed,
    Object? coreWidthMult = freezed,
    Object? collisionClass = freezed,
    Object? collisionClassByFighter = freezed,
    Object? pierceSet = freezed,
    Object? autofire = freezed,
    Object? mode = freezed,
    Object? weapons = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      specClass: specClass == freezed
          ? _value.specClass
          : specClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      turretSprite: turretSprite == freezed
          ? _value.turretSprite
          : turretSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointSprite: hardpointSprite == freezed
          ? _value.hardpointSprite
          : hardpointSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretOffsets: turretOffsets == freezed
          ? _value.turretOffsets
          : turretOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      turretAngleOffsets: turretAngleOffsets == freezed
          ? _value.turretAngleOffsets
          : turretAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointOffsets: hardpointOffsets == freezed
          ? _value.hardpointOffsets
          : hardpointOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointAngleOffsets: hardpointAngleOffsets == freezed
          ? _value.hardpointAngleOffsets
          : hardpointAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      glowColor: glowColor == freezed
          ? _value.glowColor
          : glowColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      projectileSpecId: projectileSpecId == freezed
          ? _value.projectileSpecId
          : projectileSpecId // ignore: cast_nullable_to_non_nullable
              as String?,
      barrelMode: barrelMode == freezed
          ? _value.barrelMode
          : barrelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      fringeColor: fringeColor == freezed
          ? _value.fringeColor
          : fringeColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      coreColor: coreColor == freezed
          ? _value.coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      textureType: textureType == freezed
          ? _value.textureType
          : textureType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mountTypeOverride: mountTypeOverride == freezed
          ? _value.mountTypeOverride
          : mountTypeOverride // ignore: cast_nullable_to_non_nullable
              as String?,
      turretUnderSprite: turretUnderSprite == freezed
          ? _value.turretUnderSprite
          : turretUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGunSprite: turretGunSprite == freezed
          ? _value.turretGunSprite
          : turretGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGlowSprite: turretGlowSprite == freezed
          ? _value.turretGlowSprite
          : turretGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointUnderSprite: hardpointUnderSprite == freezed
          ? _value.hardpointUnderSprite
          : hardpointUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGunSprite: hardpointGunSprite == freezed
          ? _value.hardpointGunSprite
          : hardpointGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGlowSprite: hardpointGlowSprite == freezed
          ? _value.hardpointGlowSprite
          : hardpointGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundOne: fireSoundOne == freezed
          ? _value.fireSoundOne
          : fireSoundOne // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundTwo: fireSoundTwo == freezed
          ? _value.fireSoundTwo
          : fireSoundTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      everyFrameEffect: everyFrameEffect == freezed
          ? _value.everyFrameEffect
          : everyFrameEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      animateWhileFiring: animateWhileFiring == freezed
          ? _value.animateWhileFiring
          : animateWhileFiring // ignore: cast_nullable_to_non_nullable
              as bool?,
      alwaysAnimate: alwaysAnimate == freezed
          ? _value.alwaysAnimate
          : alwaysAnimate // ignore: cast_nullable_to_non_nullable
              as bool?,
      numFrames: numFrames == freezed
          ? _value.numFrames
          : numFrames // ignore: cast_nullable_to_non_nullable
              as int?,
      frameRate: frameRate == freezed
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      renderHints: renderHints == freezed
          ? _value.renderHints
          : renderHints // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      renderBelowAllWeapons: renderBelowAllWeapons == freezed
          ? _value.renderBelowAllWeapons
          : renderBelowAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      renderAboveAllWeapons: renderAboveAllWeapons == freezed
          ? _value.renderAboveAllWeapons
          : renderAboveAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      showDamageWhenDecorative: showDamageWhenDecorative == freezed
          ? _value.showDamageWhenDecorative
          : showDamageWhenDecorative // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayArcRadius: displayArcRadius == freezed
          ? _value.displayArcRadius
          : displayArcRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowHeight: specialWeaponGlowHeight == freezed
          ? _value.specialWeaponGlowHeight
          : specialWeaponGlowHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowWidth: specialWeaponGlowWidth == freezed
          ? _value.specialWeaponGlowWidth
          : specialWeaponGlowWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      animationType: animationType == freezed
          ? _value.animationType
          : animationType // ignore: cast_nullable_to_non_nullable
              as String?,
      visualRecoil: visualRecoil == freezed
          ? _value.visualRecoil
          : visualRecoil // ignore: cast_nullable_to_non_nullable
              as double?,
      separateRecoilForLinkedBarrels: separateRecoilForLinkedBarrels == freezed
          ? _value.separateRecoilForLinkedBarrels
          : separateRecoilForLinkedBarrels // ignore: cast_nullable_to_non_nullable
              as bool?,
      interruptibleBurst: interruptibleBurst == freezed
          ? _value.interruptibleBurst
          : interruptibleBurst // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocharge: autocharge == freezed
          ? _value.autocharge
          : autocharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresFullCharge: requiresFullCharge == freezed
          ? _value.requiresFullCharge
          : requiresFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      muzzleFlashSpec: muzzleFlashSpec == freezed
          ? _value.muzzleFlashSpec
          : muzzleFlashSpec // ignore: cast_nullable_to_non_nullable
              as WeaponMuzzleFlashSpec?,
      smokeSpec: smokeSpec == freezed
          ? _value.smokeSpec
          : smokeSpec // ignore: cast_nullable_to_non_nullable
              as WeaponSmokeSpec?,
      noImpactSounds: noImpactSounds == freezed
          ? _value.noImpactSounds
          : noImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noShieldImpactSounds: noShieldImpactSounds == freezed
          ? _value.noShieldImpactSounds
          : noShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noNonShieldImpactSounds: noNonShieldImpactSounds == freezed
          ? _value.noNonShieldImpactSounds
          : noNonShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      unaffectedByProjectileSpeedBonuses: unaffectedByProjectileSpeedBonuses ==
              freezed
          ? _value.unaffectedByProjectileSpeedBonuses
          : unaffectedByProjectileSpeedBonuses // ignore: cast_nullable_to_non_nullable
              as bool?,
      beamEffect: beamEffect == freezed
          ? _value.beamEffect
          : beamEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      beamFireOnlyOnFullCharge: beamFireOnlyOnFullCharge == freezed
          ? _value.beamFireOnlyOnFullCharge
          : beamFireOnlyOnFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      convergeOnPoint: convergeOnPoint == freezed
          ? _value.convergeOnPoint
          : convergeOnPoint // ignore: cast_nullable_to_non_nullable
              as bool?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      textureScrollSpeed: textureScrollSpeed == freezed
          ? _value.textureScrollSpeed
          : textureScrollSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      pixelsPerTexel: pixelsPerTexel == freezed
          ? _value.pixelsPerTexel
          : pixelsPerTexel // ignore: cast_nullable_to_non_nullable
              as double?,
      hitGlowRadius: hitGlowRadius == freezed
          ? _value.hitGlowRadius
          : hitGlowRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      darkCore: darkCore == freezed
          ? _value.darkCore
          : darkCore // ignore: cast_nullable_to_non_nullable
              as bool?,
      darkFringeIter: darkFringeIter == freezed
          ? _value.darkFringeIter
          : darkFringeIter // ignore: cast_nullable_to_non_nullable
              as int?,
      darkCoreIter: darkCoreIter == freezed
          ? _value.darkCoreIter
          : darkCoreIter // ignore: cast_nullable_to_non_nullable
              as int?,
      coreWidthMult: coreWidthMult == freezed
          ? _value.coreWidthMult
          : coreWidthMult // ignore: cast_nullable_to_non_nullable
              as double?,
      collisionClass: collisionClass == freezed
          ? _value.collisionClass
          : collisionClass // ignore: cast_nullable_to_non_nullable
              as String?,
      collisionClassByFighter: collisionClassByFighter == freezed
          ? _value.collisionClassByFighter
          : collisionClassByFighter // ignore: cast_nullable_to_non_nullable
              as String?,
      pierceSet: pierceSet == freezed
          ? _value.pierceSet
          : pierceSet // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      autofire: autofire == freezed
          ? _value.autofire
          : autofire // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      weapons: weapons == freezed
          ? _value.weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }

  @override
  $WeaponMuzzleFlashSpecCopyWith<$Res>? get muzzleFlashSpec {
    if (_value.muzzleFlashSpec == null) {
      return null;
    }

    return $WeaponMuzzleFlashSpecCopyWith<$Res>(_value.muzzleFlashSpec!,
        (value) {
      return _then(_value.copyWith(muzzleFlashSpec: value));
    });
  }

  @override
  $WeaponSmokeSpecCopyWith<$Res>? get smokeSpec {
    if (_value.smokeSpec == null) {
      return null;
    }

    return $WeaponSmokeSpecCopyWith<$Res>(_value.smokeSpec!, (value) {
      return _then(_value.copyWith(smokeSpec: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeaponCopyWith<$Res> implements $WeaponCopyWith<$Res> {
  factory _$$_WeaponCopyWith(_$_Weapon value, $Res Function(_$_Weapon) then) =
      __$$_WeaponCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? specClass,
      String? type,
      String? size,
      String? turretSprite,
      String? hardpointSprite,
      List<double>? turretOffsets,
      List<double>? turretAngleOffsets,
      List<double>? hardpointOffsets,
      List<double>? hardpointAngleOffsets,
      List<double>? glowColor,
      String? projectileSpecId,
      String? barrelMode,
      List<double>? fringeColor,
      List<double>? coreColor,
      dynamic textureType,
      String? mountTypeOverride,
      String? turretUnderSprite,
      String? turretGunSprite,
      String? turretGlowSprite,
      String? hardpointUnderSprite,
      String? hardpointGunSprite,
      String? hardpointGlowSprite,
      String? fireSoundOne,
      String? fireSoundTwo,
      String? everyFrameEffect,
      bool? animateWhileFiring,
      @BoolConverter() bool? alwaysAnimate,
      int? numFrames,
      double? frameRate,
      Set<String>? renderHints,
      bool? renderBelowAllWeapons,
      bool? renderAboveAllWeapons,
      bool? showDamageWhenDecorative,
      double? displayArcRadius,
      double? specialWeaponGlowHeight,
      double? specialWeaponGlowWidth,
      String? animationType,
      double? visualRecoil,
      bool? separateRecoilForLinkedBarrels,
      bool? interruptibleBurst,
      bool? autocharge,
      bool? requiresFullCharge,
      WeaponMuzzleFlashSpec? muzzleFlashSpec,
      WeaponSmokeSpec? smokeSpec,
      bool? noImpactSounds,
      bool? noShieldImpactSounds,
      bool? noNonShieldImpactSounds,
      bool? unaffectedByProjectileSpeedBonuses,
      String? beamEffect,
      bool? beamFireOnlyOnFullCharge,
      bool? convergeOnPoint,
      double? width,
      double? textureScrollSpeed,
      double? pixelsPerTexel,
      double? hitGlowRadius,
      bool? darkCore,
      int? darkFringeIter,
      int? darkCoreIter,
      double? coreWidthMult,
      String? collisionClass,
      String? collisionClassByFighter,
      Set<String>? pierceSet,
      bool autofire,
      String mode,
      Map<String, String> weapons});

  @override
  $WeaponMuzzleFlashSpecCopyWith<$Res>? get muzzleFlashSpec;
  @override
  $WeaponSmokeSpecCopyWith<$Res>? get smokeSpec;
}

/// @nodoc
class __$$_WeaponCopyWithImpl<$Res> extends _$WeaponCopyWithImpl<$Res>
    implements _$$_WeaponCopyWith<$Res> {
  __$$_WeaponCopyWithImpl(_$_Weapon _value, $Res Function(_$_Weapon) _then)
      : super(_value, (v) => _then(v as _$_Weapon));

  @override
  _$_Weapon get _value => super._value as _$_Weapon;

  @override
  $Res call({
    Object? id = freezed,
    Object? specClass = freezed,
    Object? type = freezed,
    Object? size = freezed,
    Object? turretSprite = freezed,
    Object? hardpointSprite = freezed,
    Object? turretOffsets = freezed,
    Object? turretAngleOffsets = freezed,
    Object? hardpointOffsets = freezed,
    Object? hardpointAngleOffsets = freezed,
    Object? glowColor = freezed,
    Object? projectileSpecId = freezed,
    Object? barrelMode = freezed,
    Object? fringeColor = freezed,
    Object? coreColor = freezed,
    Object? textureType = freezed,
    Object? mountTypeOverride = freezed,
    Object? turretUnderSprite = freezed,
    Object? turretGunSprite = freezed,
    Object? turretGlowSprite = freezed,
    Object? hardpointUnderSprite = freezed,
    Object? hardpointGunSprite = freezed,
    Object? hardpointGlowSprite = freezed,
    Object? fireSoundOne = freezed,
    Object? fireSoundTwo = freezed,
    Object? everyFrameEffect = freezed,
    Object? animateWhileFiring = freezed,
    Object? alwaysAnimate = freezed,
    Object? numFrames = freezed,
    Object? frameRate = freezed,
    Object? renderHints = freezed,
    Object? renderBelowAllWeapons = freezed,
    Object? renderAboveAllWeapons = freezed,
    Object? showDamageWhenDecorative = freezed,
    Object? displayArcRadius = freezed,
    Object? specialWeaponGlowHeight = freezed,
    Object? specialWeaponGlowWidth = freezed,
    Object? animationType = freezed,
    Object? visualRecoil = freezed,
    Object? separateRecoilForLinkedBarrels = freezed,
    Object? interruptibleBurst = freezed,
    Object? autocharge = freezed,
    Object? requiresFullCharge = freezed,
    Object? muzzleFlashSpec = freezed,
    Object? smokeSpec = freezed,
    Object? noImpactSounds = freezed,
    Object? noShieldImpactSounds = freezed,
    Object? noNonShieldImpactSounds = freezed,
    Object? unaffectedByProjectileSpeedBonuses = freezed,
    Object? beamEffect = freezed,
    Object? beamFireOnlyOnFullCharge = freezed,
    Object? convergeOnPoint = freezed,
    Object? width = freezed,
    Object? textureScrollSpeed = freezed,
    Object? pixelsPerTexel = freezed,
    Object? hitGlowRadius = freezed,
    Object? darkCore = freezed,
    Object? darkFringeIter = freezed,
    Object? darkCoreIter = freezed,
    Object? coreWidthMult = freezed,
    Object? collisionClass = freezed,
    Object? collisionClassByFighter = freezed,
    Object? pierceSet = freezed,
    Object? autofire = freezed,
    Object? mode = freezed,
    Object? weapons = freezed,
  }) {
    return _then(_$_Weapon(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      specClass: specClass == freezed
          ? _value.specClass
          : specClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      turretSprite: turretSprite == freezed
          ? _value.turretSprite
          : turretSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointSprite: hardpointSprite == freezed
          ? _value.hardpointSprite
          : hardpointSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretOffsets: turretOffsets == freezed
          ? _value._turretOffsets
          : turretOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      turretAngleOffsets: turretAngleOffsets == freezed
          ? _value._turretAngleOffsets
          : turretAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointOffsets: hardpointOffsets == freezed
          ? _value._hardpointOffsets
          : hardpointOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      hardpointAngleOffsets: hardpointAngleOffsets == freezed
          ? _value._hardpointAngleOffsets
          : hardpointAngleOffsets // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      glowColor: glowColor == freezed
          ? _value._glowColor
          : glowColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      projectileSpecId: projectileSpecId == freezed
          ? _value.projectileSpecId
          : projectileSpecId // ignore: cast_nullable_to_non_nullable
              as String?,
      barrelMode: barrelMode == freezed
          ? _value.barrelMode
          : barrelMode // ignore: cast_nullable_to_non_nullable
              as String?,
      fringeColor: fringeColor == freezed
          ? _value._fringeColor
          : fringeColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      coreColor: coreColor == freezed
          ? _value._coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      textureType: textureType == freezed
          ? _value.textureType
          : textureType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mountTypeOverride: mountTypeOverride == freezed
          ? _value.mountTypeOverride
          : mountTypeOverride // ignore: cast_nullable_to_non_nullable
              as String?,
      turretUnderSprite: turretUnderSprite == freezed
          ? _value.turretUnderSprite
          : turretUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGunSprite: turretGunSprite == freezed
          ? _value.turretGunSprite
          : turretGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      turretGlowSprite: turretGlowSprite == freezed
          ? _value.turretGlowSprite
          : turretGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointUnderSprite: hardpointUnderSprite == freezed
          ? _value.hardpointUnderSprite
          : hardpointUnderSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGunSprite: hardpointGunSprite == freezed
          ? _value.hardpointGunSprite
          : hardpointGunSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      hardpointGlowSprite: hardpointGlowSprite == freezed
          ? _value.hardpointGlowSprite
          : hardpointGlowSprite // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundOne: fireSoundOne == freezed
          ? _value.fireSoundOne
          : fireSoundOne // ignore: cast_nullable_to_non_nullable
              as String?,
      fireSoundTwo: fireSoundTwo == freezed
          ? _value.fireSoundTwo
          : fireSoundTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      everyFrameEffect: everyFrameEffect == freezed
          ? _value.everyFrameEffect
          : everyFrameEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      animateWhileFiring: animateWhileFiring == freezed
          ? _value.animateWhileFiring
          : animateWhileFiring // ignore: cast_nullable_to_non_nullable
              as bool?,
      alwaysAnimate: alwaysAnimate == freezed
          ? _value.alwaysAnimate
          : alwaysAnimate // ignore: cast_nullable_to_non_nullable
              as bool?,
      numFrames: numFrames == freezed
          ? _value.numFrames
          : numFrames // ignore: cast_nullable_to_non_nullable
              as int?,
      frameRate: frameRate == freezed
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as double?,
      renderHints: renderHints == freezed
          ? _value._renderHints
          : renderHints // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      renderBelowAllWeapons: renderBelowAllWeapons == freezed
          ? _value.renderBelowAllWeapons
          : renderBelowAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      renderAboveAllWeapons: renderAboveAllWeapons == freezed
          ? _value.renderAboveAllWeapons
          : renderAboveAllWeapons // ignore: cast_nullable_to_non_nullable
              as bool?,
      showDamageWhenDecorative: showDamageWhenDecorative == freezed
          ? _value.showDamageWhenDecorative
          : showDamageWhenDecorative // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayArcRadius: displayArcRadius == freezed
          ? _value.displayArcRadius
          : displayArcRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowHeight: specialWeaponGlowHeight == freezed
          ? _value.specialWeaponGlowHeight
          : specialWeaponGlowHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      specialWeaponGlowWidth: specialWeaponGlowWidth == freezed
          ? _value.specialWeaponGlowWidth
          : specialWeaponGlowWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      animationType: animationType == freezed
          ? _value.animationType
          : animationType // ignore: cast_nullable_to_non_nullable
              as String?,
      visualRecoil: visualRecoil == freezed
          ? _value.visualRecoil
          : visualRecoil // ignore: cast_nullable_to_non_nullable
              as double?,
      separateRecoilForLinkedBarrels: separateRecoilForLinkedBarrels == freezed
          ? _value.separateRecoilForLinkedBarrels
          : separateRecoilForLinkedBarrels // ignore: cast_nullable_to_non_nullable
              as bool?,
      interruptibleBurst: interruptibleBurst == freezed
          ? _value.interruptibleBurst
          : interruptibleBurst // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocharge: autocharge == freezed
          ? _value.autocharge
          : autocharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresFullCharge: requiresFullCharge == freezed
          ? _value.requiresFullCharge
          : requiresFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      muzzleFlashSpec: muzzleFlashSpec == freezed
          ? _value.muzzleFlashSpec
          : muzzleFlashSpec // ignore: cast_nullable_to_non_nullable
              as WeaponMuzzleFlashSpec?,
      smokeSpec: smokeSpec == freezed
          ? _value.smokeSpec
          : smokeSpec // ignore: cast_nullable_to_non_nullable
              as WeaponSmokeSpec?,
      noImpactSounds: noImpactSounds == freezed
          ? _value.noImpactSounds
          : noImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noShieldImpactSounds: noShieldImpactSounds == freezed
          ? _value.noShieldImpactSounds
          : noShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      noNonShieldImpactSounds: noNonShieldImpactSounds == freezed
          ? _value.noNonShieldImpactSounds
          : noNonShieldImpactSounds // ignore: cast_nullable_to_non_nullable
              as bool?,
      unaffectedByProjectileSpeedBonuses: unaffectedByProjectileSpeedBonuses ==
              freezed
          ? _value.unaffectedByProjectileSpeedBonuses
          : unaffectedByProjectileSpeedBonuses // ignore: cast_nullable_to_non_nullable
              as bool?,
      beamEffect: beamEffect == freezed
          ? _value.beamEffect
          : beamEffect // ignore: cast_nullable_to_non_nullable
              as String?,
      beamFireOnlyOnFullCharge: beamFireOnlyOnFullCharge == freezed
          ? _value.beamFireOnlyOnFullCharge
          : beamFireOnlyOnFullCharge // ignore: cast_nullable_to_non_nullable
              as bool?,
      convergeOnPoint: convergeOnPoint == freezed
          ? _value.convergeOnPoint
          : convergeOnPoint // ignore: cast_nullable_to_non_nullable
              as bool?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      textureScrollSpeed: textureScrollSpeed == freezed
          ? _value.textureScrollSpeed
          : textureScrollSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      pixelsPerTexel: pixelsPerTexel == freezed
          ? _value.pixelsPerTexel
          : pixelsPerTexel // ignore: cast_nullable_to_non_nullable
              as double?,
      hitGlowRadius: hitGlowRadius == freezed
          ? _value.hitGlowRadius
          : hitGlowRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      darkCore: darkCore == freezed
          ? _value.darkCore
          : darkCore // ignore: cast_nullable_to_non_nullable
              as bool?,
      darkFringeIter: darkFringeIter == freezed
          ? _value.darkFringeIter
          : darkFringeIter // ignore: cast_nullable_to_non_nullable
              as int?,
      darkCoreIter: darkCoreIter == freezed
          ? _value.darkCoreIter
          : darkCoreIter // ignore: cast_nullable_to_non_nullable
              as int?,
      coreWidthMult: coreWidthMult == freezed
          ? _value.coreWidthMult
          : coreWidthMult // ignore: cast_nullable_to_non_nullable
              as double?,
      collisionClass: collisionClass == freezed
          ? _value.collisionClass
          : collisionClass // ignore: cast_nullable_to_non_nullable
              as String?,
      collisionClassByFighter: collisionClassByFighter == freezed
          ? _value.collisionClassByFighter
          : collisionClassByFighter // ignore: cast_nullable_to_non_nullable
              as String?,
      pierceSet: pierceSet == freezed
          ? _value._pierceSet
          : pierceSet // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      autofire: autofire == freezed
          ? _value.autofire
          : autofire // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      weapons: weapons == freezed
          ? _value._weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weapon implements _Weapon {
  _$_Weapon(
      {this.id = "new_weapon",
      this.specClass = "projectile",
      this.type = "ENERGY",
      this.size = "SMALL",
      this.turretSprite = "",
      this.hardpointSprite = "",
      final List<double>? turretOffsets = const [0.0, 0.0],
      final List<double>? turretAngleOffsets = const [0.0],
      final List<double>? hardpointOffsets = const [0.0, 0.0],
      final List<double>? hardpointAngleOffsets = const [0.0],
      final List<double>? glowColor = const [255.0, 255.0, 255.0, 255.0],
      this.projectileSpecId = "",
      this.barrelMode = "ALTERNATING",
      final List<double>? fringeColor = const [255.0, 255.0, 255.0, 255.0],
      final List<double>? coreColor = const [255.0, 255.0, 255.0, 255.0],
      this.textureType = "ROUGH",
      this.mountTypeOverride = "",
      this.turretUnderSprite = "",
      this.turretGunSprite = "",
      this.turretGlowSprite = "",
      this.hardpointUnderSprite = "",
      this.hardpointGunSprite = "",
      this.hardpointGlowSprite = "",
      this.fireSoundOne = "",
      this.fireSoundTwo = "",
      this.everyFrameEffect = "",
      this.animateWhileFiring = true,
      @BoolConverter() this.alwaysAnimate = false,
      this.numFrames = 1,
      this.frameRate = 1.0,
      final Set<String>? renderHints = const {},
      this.renderBelowAllWeapons = false,
      this.renderAboveAllWeapons = false,
      this.showDamageWhenDecorative = false,
      this.displayArcRadius = 0.0,
      this.specialWeaponGlowHeight = 0.0,
      this.specialWeaponGlowWidth = 0.0,
      this.animationType = "NONE",
      this.visualRecoil = 0.0,
      this.separateRecoilForLinkedBarrels = false,
      this.interruptibleBurst = false,
      this.autocharge = false,
      this.requiresFullCharge = true,
      this.muzzleFlashSpec,
      this.smokeSpec,
      this.noImpactSounds = false,
      this.noShieldImpactSounds = false,
      this.noNonShieldImpactSounds = false,
      this.unaffectedByProjectileSpeedBonuses = false,
      this.beamEffect = "",
      this.beamFireOnlyOnFullCharge = false,
      this.convergeOnPoint = false,
      this.width = 10.0,
      this.textureScrollSpeed = 64.0,
      this.pixelsPerTexel = 1.0,
      this.hitGlowRadius = 0.0,
      this.darkCore = false,
      this.darkFringeIter = 0,
      this.darkCoreIter = 0,
      this.coreWidthMult = 0.0,
      this.collisionClass = "RAY",
      this.collisionClassByFighter = "RAY_FIGHTER",
      final Set<String>? pierceSet = const {},
      this.autofire = false,
      this.mode = "",
      final Map<String, String> weapons = const {}})
      : _turretOffsets = turretOffsets,
        _turretAngleOffsets = turretAngleOffsets,
        _hardpointOffsets = hardpointOffsets,
        _hardpointAngleOffsets = hardpointAngleOffsets,
        _glowColor = glowColor,
        _fringeColor = fringeColor,
        _coreColor = coreColor,
        _renderHints = renderHints,
        _pierceSet = pierceSet,
        _weapons = weapons;

  factory _$_Weapon.fromJson(Map<String, dynamic> json) =>
      _$$_WeaponFromJson(json);

// there are only two type of weapon for now.
// specClass = projectile Or specClass = beam
// essential to both
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String? specClass;
  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? size;
  @override
  @JsonKey()
  final String? turretSprite;
  @override
  @JsonKey()
  final String? hardpointSprite;
  final List<double>? _turretOffsets;
  @override
  @JsonKey()
  List<double>? get turretOffsets {
    final value = _turretOffsets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _turretAngleOffsets;
  @override
  @JsonKey()
  List<double>? get turretAngleOffsets {
    final value = _turretAngleOffsets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _hardpointOffsets;
  @override
  @JsonKey()
  List<double>? get hardpointOffsets {
    final value = _hardpointOffsets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _hardpointAngleOffsets;
  @override
  @JsonKey()
  List<double>? get hardpointAngleOffsets {
    final value = _hardpointAngleOffsets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _glowColor;
  @override
  @JsonKey()
  List<double>? get glowColor {
    final value = _glowColor;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// essential to projectile
  @override
  @JsonKey()
  final String? projectileSpecId;
  @override
  @JsonKey()
  final String? barrelMode;
// essential to beam
  final List<double>? _fringeColor;
// essential to beam
  @override
  @JsonKey()
  List<double>? get fringeColor {
    final value = _fringeColor;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _coreColor;
  @override
  @JsonKey()
  List<double>? get coreColor {
    final value = _coreColor;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Enum or `Set<String>`
  @override
  @JsonKey()
  final dynamic textureType;
// TEnum or TString[]
// optional
  @override
  @JsonKey()
  final String? mountTypeOverride;
// 0.95.1 new
  @override
  @JsonKey()
  final String? turretUnderSprite;
  @override
  @JsonKey()
  final String? turretGunSprite;
  @override
  @JsonKey()
  final String? turretGlowSprite;
  @override
  @JsonKey()
  final String? hardpointUnderSprite;
  @override
  @JsonKey()
  final String? hardpointGunSprite;
  @override
  @JsonKey()
  final String? hardpointGlowSprite;
  @override
  @JsonKey()
  final String? fireSoundOne;
  @override
  @JsonKey()
  final String? fireSoundTwo;
  @override
  @JsonKey()
  final String? everyFrameEffect;
  @override
  @JsonKey()
  final bool? animateWhileFiring;
  @override
  @JsonKey()
  @BoolConverter()
  final bool? alwaysAnimate;
  @override
  @JsonKey()
  final int? numFrames;
  @override
  @JsonKey()
  final double? frameRate;
  final Set<String>? _renderHints;
  @override
  @JsonKey()
  Set<String>? get renderHints {
    final value = _renderHints;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  final bool? renderBelowAllWeapons;
  @override
  @JsonKey()
  final bool? renderAboveAllWeapons;
  @override
  @JsonKey()
  final bool? showDamageWhenDecorative;
  @override
  @JsonKey()
  final double? displayArcRadius;
// default is 250 but meh
  @override
  @JsonKey()
  final double? specialWeaponGlowHeight;
// default is 0 but meh
  @override
  @JsonKey()
  final double? specialWeaponGlowWidth;
// default is 0 but meh
// optional, projectile only
  @override
  @JsonKey()
  final String? animationType;
  @override
  @JsonKey()
  final double? visualRecoil;
  @override
  @JsonKey()
  final bool? separateRecoilForLinkedBarrels;
  @override
  @JsonKey()
  final bool? interruptibleBurst;
  @override
  @JsonKey()
  final bool? autocharge;
  @override
  @JsonKey()
  final bool? requiresFullCharge;
  @override
  final WeaponMuzzleFlashSpec? muzzleFlashSpec;
  @override
  final WeaponSmokeSpec? smokeSpec;
  @override
  @JsonKey()
  final bool? noImpactSounds;
  @override
  @JsonKey()
  final bool? noShieldImpactSounds;
  @override
  @JsonKey()
  final bool? noNonShieldImpactSounds;
  @override
  @JsonKey()
  final bool? unaffectedByProjectileSpeedBonuses;
// 0.95 new
// optional, beam only
  @override
  @JsonKey()
  final String? beamEffect;
  @override
  @JsonKey()
  final bool? beamFireOnlyOnFullCharge;
  @override
  @JsonKey()
  final bool? convergeOnPoint;
  @override
  @JsonKey()
  final double? width;
  @override
  @JsonKey()
  final double? textureScrollSpeed;
  @override
  @JsonKey()
  final double? pixelsPerTexel;
  @override
  @JsonKey()
  final double? hitGlowRadius;
  @override
  @JsonKey()
  final bool? darkCore;
  @override
  @JsonKey()
  final int? darkFringeIter;
// 0.95 new
  @override
  @JsonKey()
  final int? darkCoreIter;
// 0.95 new
  @override
  @JsonKey()
  final double? coreWidthMult;
// 0.95 new
  @override
  @JsonKey()
  final String? collisionClass;
  @override
  @JsonKey()
  final String? collisionClassByFighter;
  final Set<String>? _pierceSet;
  @override
  @JsonKey()
  Set<String>? get pierceSet {
    final value = _pierceSet;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  final bool autofire;
  @override
  @JsonKey()
  final String mode;
  final Map<String, String> _weapons;
  @override
  @JsonKey()
  Map<String, String> get weapons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weapons);
  }

  @override
  String toString() {
    return 'Weapon(id: $id, specClass: $specClass, type: $type, size: $size, turretSprite: $turretSprite, hardpointSprite: $hardpointSprite, turretOffsets: $turretOffsets, turretAngleOffsets: $turretAngleOffsets, hardpointOffsets: $hardpointOffsets, hardpointAngleOffsets: $hardpointAngleOffsets, glowColor: $glowColor, projectileSpecId: $projectileSpecId, barrelMode: $barrelMode, fringeColor: $fringeColor, coreColor: $coreColor, textureType: $textureType, mountTypeOverride: $mountTypeOverride, turretUnderSprite: $turretUnderSprite, turretGunSprite: $turretGunSprite, turretGlowSprite: $turretGlowSprite, hardpointUnderSprite: $hardpointUnderSprite, hardpointGunSprite: $hardpointGunSprite, hardpointGlowSprite: $hardpointGlowSprite, fireSoundOne: $fireSoundOne, fireSoundTwo: $fireSoundTwo, everyFrameEffect: $everyFrameEffect, animateWhileFiring: $animateWhileFiring, alwaysAnimate: $alwaysAnimate, numFrames: $numFrames, frameRate: $frameRate, renderHints: $renderHints, renderBelowAllWeapons: $renderBelowAllWeapons, renderAboveAllWeapons: $renderAboveAllWeapons, showDamageWhenDecorative: $showDamageWhenDecorative, displayArcRadius: $displayArcRadius, specialWeaponGlowHeight: $specialWeaponGlowHeight, specialWeaponGlowWidth: $specialWeaponGlowWidth, animationType: $animationType, visualRecoil: $visualRecoil, separateRecoilForLinkedBarrels: $separateRecoilForLinkedBarrels, interruptibleBurst: $interruptibleBurst, autocharge: $autocharge, requiresFullCharge: $requiresFullCharge, muzzleFlashSpec: $muzzleFlashSpec, smokeSpec: $smokeSpec, noImpactSounds: $noImpactSounds, noShieldImpactSounds: $noShieldImpactSounds, noNonShieldImpactSounds: $noNonShieldImpactSounds, unaffectedByProjectileSpeedBonuses: $unaffectedByProjectileSpeedBonuses, beamEffect: $beamEffect, beamFireOnlyOnFullCharge: $beamFireOnlyOnFullCharge, convergeOnPoint: $convergeOnPoint, width: $width, textureScrollSpeed: $textureScrollSpeed, pixelsPerTexel: $pixelsPerTexel, hitGlowRadius: $hitGlowRadius, darkCore: $darkCore, darkFringeIter: $darkFringeIter, darkCoreIter: $darkCoreIter, coreWidthMult: $coreWidthMult, collisionClass: $collisionClass, collisionClassByFighter: $collisionClassByFighter, pierceSet: $pierceSet, autofire: $autofire, mode: $mode, weapons: $weapons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weapon &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.specClass, specClass) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.turretSprite, turretSprite) &&
            const DeepCollectionEquality()
                .equals(other.hardpointSprite, hardpointSprite) &&
            const DeepCollectionEquality()
                .equals(other._turretOffsets, _turretOffsets) &&
            const DeepCollectionEquality()
                .equals(other._turretAngleOffsets, _turretAngleOffsets) &&
            const DeepCollectionEquality()
                .equals(other._hardpointOffsets, _hardpointOffsets) &&
            const DeepCollectionEquality()
                .equals(other._hardpointAngleOffsets, _hardpointAngleOffsets) &&
            const DeepCollectionEquality()
                .equals(other._glowColor, _glowColor) &&
            const DeepCollectionEquality()
                .equals(other.projectileSpecId, projectileSpecId) &&
            const DeepCollectionEquality()
                .equals(other.barrelMode, barrelMode) &&
            const DeepCollectionEquality()
                .equals(other._fringeColor, _fringeColor) &&
            const DeepCollectionEquality()
                .equals(other._coreColor, _coreColor) &&
            const DeepCollectionEquality()
                .equals(other.textureType, textureType) &&
            const DeepCollectionEquality()
                .equals(other.mountTypeOverride, mountTypeOverride) &&
            const DeepCollectionEquality()
                .equals(other.turretUnderSprite, turretUnderSprite) &&
            const DeepCollectionEquality()
                .equals(other.turretGunSprite, turretGunSprite) &&
            const DeepCollectionEquality()
                .equals(other.turretGlowSprite, turretGlowSprite) &&
            const DeepCollectionEquality()
                .equals(other.hardpointUnderSprite, hardpointUnderSprite) &&
            const DeepCollectionEquality()
                .equals(other.hardpointGunSprite, hardpointGunSprite) &&
            const DeepCollectionEquality()
                .equals(other.hardpointGlowSprite, hardpointGlowSprite) &&
            const DeepCollectionEquality()
                .equals(other.fireSoundOne, fireSoundOne) &&
            const DeepCollectionEquality()
                .equals(other.fireSoundTwo, fireSoundTwo) &&
            const DeepCollectionEquality()
                .equals(other.everyFrameEffect, everyFrameEffect) &&
            const DeepCollectionEquality()
                .equals(other.animateWhileFiring, animateWhileFiring) &&
            const DeepCollectionEquality()
                .equals(other.alwaysAnimate, alwaysAnimate) &&
            const DeepCollectionEquality().equals(other.numFrames, numFrames) &&
            const DeepCollectionEquality().equals(other.frameRate, frameRate) &&
            const DeepCollectionEquality()
                .equals(other._renderHints, _renderHints) &&
            const DeepCollectionEquality()
                .equals(other.renderBelowAllWeapons, renderBelowAllWeapons) &&
            const DeepCollectionEquality()
                .equals(other.renderAboveAllWeapons, renderAboveAllWeapons) &&
            const DeepCollectionEquality().equals(
                other.showDamageWhenDecorative, showDamageWhenDecorative) &&
            const DeepCollectionEquality()
                .equals(other.displayArcRadius, displayArcRadius) &&
            const DeepCollectionEquality().equals(
                other.specialWeaponGlowHeight, specialWeaponGlowHeight) &&
            const DeepCollectionEquality()
                .equals(other.specialWeaponGlowWidth, specialWeaponGlowWidth) &&
            const DeepCollectionEquality()
                .equals(other.animationType, animationType) &&
            const DeepCollectionEquality()
                .equals(other.visualRecoil, visualRecoil) &&
            const DeepCollectionEquality().equals(
                other.separateRecoilForLinkedBarrels,
                separateRecoilForLinkedBarrels) &&
            const DeepCollectionEquality()
                .equals(other.interruptibleBurst, interruptibleBurst) &&
            const DeepCollectionEquality()
                .equals(other.autocharge, autocharge) &&
            const DeepCollectionEquality()
                .equals(other.requiresFullCharge, requiresFullCharge) &&
            const DeepCollectionEquality()
                .equals(other.muzzleFlashSpec, muzzleFlashSpec) &&
            const DeepCollectionEquality().equals(other.smokeSpec, smokeSpec) &&
            const DeepCollectionEquality()
                .equals(other.noImpactSounds, noImpactSounds) &&
            const DeepCollectionEquality()
                .equals(other.noShieldImpactSounds, noShieldImpactSounds) &&
            const DeepCollectionEquality().equals(
                other.noNonShieldImpactSounds, noNonShieldImpactSounds) &&
            const DeepCollectionEquality()
                .equals(other.unaffectedByProjectileSpeedBonuses, unaffectedByProjectileSpeedBonuses) &&
            const DeepCollectionEquality().equals(other.beamEffect, beamEffect) &&
            const DeepCollectionEquality().equals(other.beamFireOnlyOnFullCharge, beamFireOnlyOnFullCharge) &&
            const DeepCollectionEquality().equals(other.convergeOnPoint, convergeOnPoint) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.textureScrollSpeed, textureScrollSpeed) &&
            const DeepCollectionEquality().equals(other.pixelsPerTexel, pixelsPerTexel) &&
            const DeepCollectionEquality().equals(other.hitGlowRadius, hitGlowRadius) &&
            const DeepCollectionEquality().equals(other.darkCore, darkCore) &&
            const DeepCollectionEquality().equals(other.darkFringeIter, darkFringeIter) &&
            const DeepCollectionEquality().equals(other.darkCoreIter, darkCoreIter) &&
            const DeepCollectionEquality().equals(other.coreWidthMult, coreWidthMult) &&
            const DeepCollectionEquality().equals(other.collisionClass, collisionClass) &&
            const DeepCollectionEquality().equals(other.collisionClassByFighter, collisionClassByFighter) &&
            const DeepCollectionEquality().equals(other._pierceSet, _pierceSet) &&
            const DeepCollectionEquality().equals(other.autofire, autofire) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other._weapons, _weapons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(specClass),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(turretSprite),
        const DeepCollectionEquality().hash(hardpointSprite),
        const DeepCollectionEquality().hash(_turretOffsets),
        const DeepCollectionEquality().hash(_turretAngleOffsets),
        const DeepCollectionEquality().hash(_hardpointOffsets),
        const DeepCollectionEquality().hash(_hardpointAngleOffsets),
        const DeepCollectionEquality().hash(_glowColor),
        const DeepCollectionEquality().hash(projectileSpecId),
        const DeepCollectionEquality().hash(barrelMode),
        const DeepCollectionEquality().hash(_fringeColor),
        const DeepCollectionEquality().hash(_coreColor),
        const DeepCollectionEquality().hash(textureType),
        const DeepCollectionEquality().hash(mountTypeOverride),
        const DeepCollectionEquality().hash(turretUnderSprite),
        const DeepCollectionEquality().hash(turretGunSprite),
        const DeepCollectionEquality().hash(turretGlowSprite),
        const DeepCollectionEquality().hash(hardpointUnderSprite),
        const DeepCollectionEquality().hash(hardpointGunSprite),
        const DeepCollectionEquality().hash(hardpointGlowSprite),
        const DeepCollectionEquality().hash(fireSoundOne),
        const DeepCollectionEquality().hash(fireSoundTwo),
        const DeepCollectionEquality().hash(everyFrameEffect),
        const DeepCollectionEquality().hash(animateWhileFiring),
        const DeepCollectionEquality().hash(alwaysAnimate),
        const DeepCollectionEquality().hash(numFrames),
        const DeepCollectionEquality().hash(frameRate),
        const DeepCollectionEquality().hash(_renderHints),
        const DeepCollectionEquality().hash(renderBelowAllWeapons),
        const DeepCollectionEquality().hash(renderAboveAllWeapons),
        const DeepCollectionEquality().hash(showDamageWhenDecorative),
        const DeepCollectionEquality().hash(displayArcRadius),
        const DeepCollectionEquality().hash(specialWeaponGlowHeight),
        const DeepCollectionEquality().hash(specialWeaponGlowWidth),
        const DeepCollectionEquality().hash(animationType),
        const DeepCollectionEquality().hash(visualRecoil),
        const DeepCollectionEquality().hash(separateRecoilForLinkedBarrels),
        const DeepCollectionEquality().hash(interruptibleBurst),
        const DeepCollectionEquality().hash(autocharge),
        const DeepCollectionEquality().hash(requiresFullCharge),
        const DeepCollectionEquality().hash(muzzleFlashSpec),
        const DeepCollectionEquality().hash(smokeSpec),
        const DeepCollectionEquality().hash(noImpactSounds),
        const DeepCollectionEquality().hash(noShieldImpactSounds),
        const DeepCollectionEquality().hash(noNonShieldImpactSounds),
        const DeepCollectionEquality().hash(unaffectedByProjectileSpeedBonuses),
        const DeepCollectionEquality().hash(beamEffect),
        const DeepCollectionEquality().hash(beamFireOnlyOnFullCharge),
        const DeepCollectionEquality().hash(convergeOnPoint),
        const DeepCollectionEquality().hash(width),
        const DeepCollectionEquality().hash(textureScrollSpeed),
        const DeepCollectionEquality().hash(pixelsPerTexel),
        const DeepCollectionEquality().hash(hitGlowRadius),
        const DeepCollectionEquality().hash(darkCore),
        const DeepCollectionEquality().hash(darkFringeIter),
        const DeepCollectionEquality().hash(darkCoreIter),
        const DeepCollectionEquality().hash(coreWidthMult),
        const DeepCollectionEquality().hash(collisionClass),
        const DeepCollectionEquality().hash(collisionClassByFighter),
        const DeepCollectionEquality().hash(_pierceSet),
        const DeepCollectionEquality().hash(autofire),
        const DeepCollectionEquality().hash(mode),
        const DeepCollectionEquality().hash(_weapons)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_WeaponCopyWith<_$_Weapon> get copyWith =>
      __$$_WeaponCopyWithImpl<_$_Weapon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeaponToJson(
      this,
    );
  }
}

abstract class _Weapon implements Weapon {
  factory _Weapon(
      {final String id,
      final String? specClass,
      final String? type,
      final String? size,
      final String? turretSprite,
      final String? hardpointSprite,
      final List<double>? turretOffsets,
      final List<double>? turretAngleOffsets,
      final List<double>? hardpointOffsets,
      final List<double>? hardpointAngleOffsets,
      final List<double>? glowColor,
      final String? projectileSpecId,
      final String? barrelMode,
      final List<double>? fringeColor,
      final List<double>? coreColor,
      final dynamic textureType,
      final String? mountTypeOverride,
      final String? turretUnderSprite,
      final String? turretGunSprite,
      final String? turretGlowSprite,
      final String? hardpointUnderSprite,
      final String? hardpointGunSprite,
      final String? hardpointGlowSprite,
      final String? fireSoundOne,
      final String? fireSoundTwo,
      final String? everyFrameEffect,
      final bool? animateWhileFiring,
      @BoolConverter() final bool? alwaysAnimate,
      final int? numFrames,
      final double? frameRate,
      final Set<String>? renderHints,
      final bool? renderBelowAllWeapons,
      final bool? renderAboveAllWeapons,
      final bool? showDamageWhenDecorative,
      final double? displayArcRadius,
      final double? specialWeaponGlowHeight,
      final double? specialWeaponGlowWidth,
      final String? animationType,
      final double? visualRecoil,
      final bool? separateRecoilForLinkedBarrels,
      final bool? interruptibleBurst,
      final bool? autocharge,
      final bool? requiresFullCharge,
      final WeaponMuzzleFlashSpec? muzzleFlashSpec,
      final WeaponSmokeSpec? smokeSpec,
      final bool? noImpactSounds,
      final bool? noShieldImpactSounds,
      final bool? noNonShieldImpactSounds,
      final bool? unaffectedByProjectileSpeedBonuses,
      final String? beamEffect,
      final bool? beamFireOnlyOnFullCharge,
      final bool? convergeOnPoint,
      final double? width,
      final double? textureScrollSpeed,
      final double? pixelsPerTexel,
      final double? hitGlowRadius,
      final bool? darkCore,
      final int? darkFringeIter,
      final int? darkCoreIter,
      final double? coreWidthMult,
      final String? collisionClass,
      final String? collisionClassByFighter,
      final Set<String>? pierceSet,
      final bool autofire,
      final String mode,
      final Map<String, String> weapons}) = _$_Weapon;

  factory _Weapon.fromJson(Map<String, dynamic> json) = _$_Weapon.fromJson;

  @override // there are only two type of weapon for now.
// specClass = projectile Or specClass = beam
// essential to both
  String get id;
  @override
  String? get specClass;
  @override
  String? get type;
  @override
  String? get size;
  @override
  String? get turretSprite;
  @override
  String? get hardpointSprite;
  @override
  List<double>? get turretOffsets;
  @override
  List<double>? get turretAngleOffsets;
  @override
  List<double>? get hardpointOffsets;
  @override
  List<double>? get hardpointAngleOffsets;
  @override
  List<double>? get glowColor;
  @override // essential to projectile
  String? get projectileSpecId;
  @override
  String? get barrelMode;
  @override // essential to beam
  List<double>? get fringeColor;
  @override
  List<double>? get coreColor;
  @override

  /// Enum or `Set<String>`
  dynamic get textureType;
  @override // TEnum or TString[]
// optional
  String? get mountTypeOverride;
  @override // 0.95.1 new
  String? get turretUnderSprite;
  @override
  String? get turretGunSprite;
  @override
  String? get turretGlowSprite;
  @override
  String? get hardpointUnderSprite;
  @override
  String? get hardpointGunSprite;
  @override
  String? get hardpointGlowSprite;
  @override
  String? get fireSoundOne;
  @override
  String? get fireSoundTwo;
  @override
  String? get everyFrameEffect;
  @override
  bool? get animateWhileFiring;
  @override
  @BoolConverter()
  bool? get alwaysAnimate;
  @override
  int? get numFrames;
  @override
  double? get frameRate;
  @override
  Set<String>? get renderHints;
  @override
  bool? get renderBelowAllWeapons;
  @override
  bool? get renderAboveAllWeapons;
  @override
  bool? get showDamageWhenDecorative;
  @override
  double? get displayArcRadius;
  @override // default is 250 but meh
  double? get specialWeaponGlowHeight;
  @override // default is 0 but meh
  double? get specialWeaponGlowWidth;
  @override // default is 0 but meh
// optional, projectile only
  String? get animationType;
  @override
  double? get visualRecoil;
  @override
  bool? get separateRecoilForLinkedBarrels;
  @override
  bool? get interruptibleBurst;
  @override
  bool? get autocharge;
  @override
  bool? get requiresFullCharge;
  @override
  WeaponMuzzleFlashSpec? get muzzleFlashSpec;
  @override
  WeaponSmokeSpec? get smokeSpec;
  @override
  bool? get noImpactSounds;
  @override
  bool? get noShieldImpactSounds;
  @override
  bool? get noNonShieldImpactSounds;
  @override
  bool? get unaffectedByProjectileSpeedBonuses;
  @override // 0.95 new
// optional, beam only
  String? get beamEffect;
  @override
  bool? get beamFireOnlyOnFullCharge;
  @override
  bool? get convergeOnPoint;
  @override
  double? get width;
  @override
  double? get textureScrollSpeed;
  @override
  double? get pixelsPerTexel;
  @override
  double? get hitGlowRadius;
  @override
  bool? get darkCore;
  @override
  int? get darkFringeIter;
  @override // 0.95 new
  int? get darkCoreIter;
  @override // 0.95 new
  double? get coreWidthMult;
  @override // 0.95 new
  String? get collisionClass;
  @override
  String? get collisionClassByFighter;
  @override
  Set<String>? get pierceSet;
  @override
  bool get autofire;
  @override
  String get mode;
  @override
  Map<String, String> get weapons;
  @override
  @JsonKey(ignore: true)
  _$$_WeaponCopyWith<_$_Weapon> get copyWith =>
      throw _privateConstructorUsedError;
}
