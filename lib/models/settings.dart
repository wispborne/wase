import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/models/settings.freezed.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({
    @Default(false) bool hideVanillaData,
    final String? gameDir,
    final String? imagesDir,
    final String? weaponImagesDir,
    final String? skinImagesDir,
    final String? dataDir,
    final String? variantDir,
    final String? skinDir,
    final String? weaponDir,
  }) = _Settings;
}

class SettingSaver extends ProviderObserver {

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    if (provider == appSettings) {
      Fimber.d("TODO: save settings: $newValue");
    }
  }
}
