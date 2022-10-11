import 'package:freezed_annotation/freezed_annotation.dart';

part 'variantWeapon.freezed.dart';
part 'variantWeapon.g.dart';

@freezed
class VariantWeapon with _$VariantWeapon {
  factory VariantWeapon({
    @Default(false) final bool autofire,
    @Default("") final String mode,
    @Default({}) final Map<String, String> weapons,
  }) = _VariantWeapon;

  factory VariantWeapon.fromJson(Map<String, Object?> json)
  => _$VariantWeaponFromJson(json);
}