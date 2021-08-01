import 'package:cryptocurrency_app/constants/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'provider/settings_provider.dart';
import 'ui/home.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('es')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: ProviderScope(child: MyApp())));
}

class MyApp extends HookConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(cryptoSettings);

    final themeMode = settings.maybeWhen(
        data: (data) => Utils.getThemeMode(data.themeMode),
        orElse: () => ThemeMode.system);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: Home(),
        themeMode: themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark);
  }
}
