import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/models/exchanges/exchange/exchange.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:settings_ui/settings_ui.dart';
import '../../generated/locale_keys.g.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;

class SettingScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final settings = useProvider(cryptoSettings);
    final exchanges = useProvider(exchangesProvider);
    final pairs = useProvider(pairsProvider);

    final details =
        settings.maybeWhen(data: (details) => details, orElse: () => null);

    return details != null
        ? Container(
            key: Keys.SETTINGS_SCREEN,
            child: Column(
              children: [
                AppBar(
                  title: Text(
                    LocaleKeys.settingsTitle.tr(),
                  ),
                ),
                Expanded(
                  child: SettingsList(
                    contentPadding: EdgeInsets.zero,
                    sections: [
                      SettingsSection(
                        title: LocaleKeys.languageSection.tr(),
                        tiles: [
                          SettingsTile(
                              title: LocaleKeys.language.tr(),
                              subtitle: details.currentLanguage.tr(),
                              leading: Icon(Icons.language),
                              onPressed: (BuildContext ctx) =>
                                  showLenguageSelectionDialog(
                                      context, details.currentLanguage)),
                        ],
                      ),
                      SettingsSection(
                        title: LocaleKeys.dataSection.tr(),
                        tiles: [
                          SettingsTile(
                            title: LocaleKeys.exchange.tr(),
                            subtitle: details.favoriteExchange,
                            leading: Icon(Icons.graphic_eq),
                            onPressed: (BuildContext context) =>
                                showExchangeSelectDialog(context, exchanges),
                          ),
                          SettingsTile(
                              title: LocaleKeys.topPair.tr(),
                              subtitle: details.favoritePair,
                              leading: Icon(Icons.language),
                              onPressed: (BuildContext context) =>
                                  showTopPairSelectDialog(context, pairs)),
                        ],
                      ),
                      SettingsSection(
                        title: LocaleKeys.designSection.tr(),
                        tiles: [
                          SettingsTile(
                            title: LocaleKeys.appTheme.tr(),
                            subtitle: details.themeMode,
                            leading: Icon(Icons.graphic_eq),
                            onPressed: (BuildContext context) =>
                                showThemeSelectDialog(
                                    context, details.themeMode),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : CircularProgressIndicator();
  }

  void showLenguageSelectionDialog(
      BuildContext context, String currentLenguage) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(LocaleKeys.language.tr()),
        content: Container(
          height: 100,
          child: Column(
            children: [
              Row(
                children: [
                  Radio<String>(
                    value: currentLenguage,
                    groupValue: LocaleKeys.english,
                    onChanged: (value) async {
                      await context.setLocale(Locale('en'));

                      context
                          .read(cryptoSettings.notifier)
                          .setLenguage(LocaleKeys.english);

                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    LocaleKeys.english.tr(),
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: currentLenguage,
                    groupValue: LocaleKeys.spanish,
                    onChanged: (value) async {
                      await context.setLocale(Locale('es'));
                      context
                          .read(cryptoSettings.notifier)
                          .setLenguage(LocaleKeys.spanish);
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    LocaleKeys.spanish.tr(),
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showExchangeSelectDialog(
      BuildContext context, AsyncValue<List<Exchange>> exchanges) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 300,
              width: 200,
              child: exchanges.maybeWhen(
                  data: (data) => ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context
                                  .read(cryptoSettings.notifier)
                                  .setFavoriteExchange(data[index].symbol);

                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                data[index].name,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          );
                        },
                      ),
                  orElse: () => CircularProgressIndicator()),
            ),
          );
        });
  }

  void showTopPairSelectDialog(
      BuildContext context, AsyncValue<List<Pair>> pairs) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
                height: 300,
                width: 200,
                child: pairs.maybeWhen(
                    data: (data) {
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read(cryptoSettings.notifier)
                                        .setFavoritePair(data[index].pair);
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 3),
                                    child: Text(data[index].pair,
                                        style: TextStyle(fontSize: 18)),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    orElse: () => Center(
                          child: CircularProgressIndicator(),
                        ))),
          );
        });
  }

  void showThemeSelectDialog(BuildContext context, currentTheme) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 150,
              child: Column(
                children: Utils.themeModes
                    .map((data) => GestureDetector(
                          onTap: () {
                            context
                                .read(cryptoSettings.notifier)
                                .setTheme(data);
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Radio<String>(
                                onChanged: (value) {
                                  context
                                      .read(cryptoSettings.notifier)
                                      .setTheme(value!);
                                  Navigator.pop(context);
                                },
                                value: data,
                                groupValue: currentTheme,
                              ),
                              Text(data, style: TextStyle(fontSize: 18))
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          );
        });
  }
}
