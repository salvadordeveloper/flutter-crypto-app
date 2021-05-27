import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_details.freezed.dart';

@freezed
abstract class SettingsDetails with _$SettingsDetails {
  const factory SettingsDetails({
    required String currentLanguage,
    required String favoriteExchange,
    required String favoritePair,
    required String themeMode,
  }) = _SettingsDetails;
}
