import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/provider/navigation_provider.dart';
import 'package:cryptocurrency_app/ui/screens/home.dart';
import 'package:cryptocurrency_app/ui/screens/search.dart';
import 'package:cryptocurrency_app/ui/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import '../generated/locale_keys.g.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final navigation = useProvider(navigationProvider);

    return Scaffold(
      body: currentScreen(navigation.index),
      bottomNavigationBar: BottomNavigationBar(
          key: Keys.NAV_BAR,
          currentIndex: navigation.index,
          onTap: (index) {
            context.read(navigationProvider.notifier).selectPage(index);
          },
          items: [
            BottomNavigationBarItem(
              label: LocaleKeys.homeTitle.tr(),
              icon: Icon(
                Icons.home,
                key: Keys.NAV_HOME,
              ),
            ),
            BottomNavigationBarItem(
              label: LocaleKeys.searchTitle.tr(),
              icon: Icon(
                Icons.search,
                key: Keys.NAV_SEARCH,
              ),
            ),
            BottomNavigationBarItem(
              label: LocaleKeys.settingsTitle.tr(),
              icon: Icon(
                Icons.settings,
                key: Keys.NAV_SETTINGS,
              ),
            ),
          ]),
    );
  }

  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return SettingScreen();
      default:
        return HomeScreen();
    }
  }
}
