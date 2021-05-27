import 'dart:async';
import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/main.dart' as app;
import 'package:cryptocurrency_app/repository/crypto_repository.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'data/api_data.dart';

void main() {
  final dioAdapter = DioAdapter();
  final dio = Dio();
  setUpAll(() {
    dio.httpClientAdapter = dioAdapter;

    //Get graph
    dioAdapter.onGet('/markets/binance/btcusdt/ohlc', (request) {
      request.reply(200, ApiData.pair_btcusdt_graph);
    });

    //Get trades
    dioAdapter.onGet('/markets/binance/btcusdt/trades', (request) {
      request.reply(200, ApiData.pair_btcusdt_trades);
    });

    //Get orderbook
    dioAdapter.onGet('/markets/binance/btcusdt/orderbook', (request) {
      request.reply(200, ApiData.pair_btcusdt_oderbook);
    });

    //Get sumary of btcusdt
    dioAdapter.onGet('/markets/binance/btcusdt/summary', (request) {
      print(request.toString());
      request.reply(200, ApiData.pair_btcusdt_summary);
    });

    //Get list of pairs from Binance
    dioAdapter.onGet('/markets/binance', (request) {
      print(request.toString());

      request.reply(200, ApiData.pairs);
    });
  });

  group('Search Screen Test', () {
    testWidgets('Search screen loading data', (tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      runApp(EasyLocalization(
          supportedLocales: [Locale('en'), Locale('es')],
          path: 'assets/translations',
          fallbackLocale: Locale('en'),
          child: ProviderScope(
            overrides: [clientProvider.overrideWithValue(dio)],
            child: app.MyApp(),
          )));

      await tester.pumpAndSettle();
      final searchButton = find.byKey(Keys.NAV_SEARCH);

      await pumpUntilFound(tester, searchButton);

      await tester.tap(searchButton);

      await tester.pumpAndSettle();

      final results = await find.byKey(Keys.PAIR_TILE);

      expect(results, findsNWidgets(4));

      final searchTextField = await find.byKey(Keys.SEARCH_TEXT_FIELD);
      await tester.showKeyboard(searchTextField);
      tester.testTextInput.enterText("btcusdt");
      await tester.testTextInput.receiveAction(TextInputAction.done);

      await tester.pumpAndSettle();
      final resultsFiltered = await find.byKey(Keys.PAIR_TILE);
      expect(resultsFiltered, findsOneWidget);
    });
  });
}

Future<void> pumpUntilFound(
  WidgetTester tester,
  Finder finder, {
  Duration timeout = const Duration(seconds: 30),
}) async {
  var timerDone = false;
  final timer =
      Timer(timeout, () => throw TimeoutException("Pump until has timed out"));
  while (timerDone != true) {
    await tester.pump();

    final found = tester.any(finder);
    if (found) {
      timerDone = true;
    }
  }
  timer.cancel();
}
