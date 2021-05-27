import 'package:cryptocurrency_app/constants/exceptions.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/models/settings/settings_details/settings_details.dart';
import 'package:cryptocurrency_app/models/settings/settings_state/settings_state.dart';
import 'package:cryptocurrency_app/repository/crypto_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../generated/locale_keys.g.dart';

final flutterDatabase =
    Provider<FlutterSecureStorage>((ref) => FlutterSecureStorage());

final cryptoSettings = StateNotifierProvider<SettingsNotifier, SettingsState>(
    (ref) => SettingsNotifier(ref.read));

class SettingsNotifier extends StateNotifier<SettingsState> {
  final Reader read;

  late SettingsDetails details;

  SettingsNotifier(this.read) : super(SettingsState.initial()) {
    loadData();
  }

  void loadData() async {
    state = SettingsState.loading();
    final language = (await read(flutterDatabase).read(key: "language")) ??
        Utils.defaultLenguage;
    final exchange = (await read(flutterDatabase).read(key: "exchange")) ??
        Utils.defaultExchange;
    final pair =
        (await read(flutterDatabase).read(key: "pair")) ?? Utils.defaultPair;
    final theme =
        (await read(flutterDatabase).read(key: "theme")) ?? Utils.defaultTheme;
    details = SettingsDetails(
        currentLanguage: language,
        favoriteExchange: exchange,
        favoritePair: pair,
        themeMode: theme);
    state = SettingsState.data(details: details);
  }

  void setLenguage(String language) async {
    state = SettingsState.loading();
    await read(flutterDatabase).write(key: "language", value: language);
    details = details.copyWith(currentLanguage: language);
    state = SettingsState.data(details: details);
  }

  Future<void> setFavoriteExchange(String exchange) async {
    state = SettingsState.loading();
    await read(flutterDatabase).write(key: "exchange", value: exchange);
    details = details.copyWith(favoriteExchange: exchange);
    state = SettingsState.data(details: details);
    verifyFavoritePair();
  }

  Future<void> verifyFavoritePair() async {
    try {
      await read(cryptoRepository)
          .getPairSummary(details.favoriteExchange, details.favoritePair);
    } on DataException catch (error) {
      if (error.message == LocaleKeys.errorRequestNotFound) {
        List<Pair> pairs =
            await read(cryptoRepository).getPairs(details.favoriteExchange);
        setFavoritePair(pairs.first.pair);
      }
    }
  }

  Future<void> setFavoritePair(String pair) async {
    state = SettingsState.loading();
    await read(flutterDatabase).write(key: "pair", value: pair);
    details = details.copyWith(favoritePair: pair);
    state = SettingsState.data(details: details);
  }

  void setTheme(String theme) async {
    state = SettingsState.loading();
    await read(flutterDatabase).write(key: "theme", value: theme);
    details = details.copyWith(themeMode: theme);
    state = SettingsState.data(details: details);
  }
}
