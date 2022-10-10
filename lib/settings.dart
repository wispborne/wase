import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

final appSettings = StateProvider<Settings>((ref) => Settings());

@freezed
class Settings with _$Settings {
  factory Settings({
    final String? images_dir,
    final String? weapon_images_dir,
    final String? skin_images_dir,
    final String? data_dir,
    final String? variant_dir,
    final String? skin_dir,
    final String? weapon_dir,
  }) = _Settings;
}

class SettingSaver extends ProviderObserver {

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    if (provider == appSettings) {
      print("TODO: save settings: $newValue");
    }
  }
}
