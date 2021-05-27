import 'package:cryptocurrency_app/models/exchanges/exchange/exchange.dart';
import 'package:cryptocurrency_app/models/exchanges/exchanges_response/exchanges_response.dart';
import 'package:cryptocurrency_app/models/graph/graph/graph.dart';
import 'package:cryptocurrency_app/models/graph/graph_response/graph_response.dart';
import 'package:cryptocurrency_app/models/markets/market_response/market_response.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/models/orderbook/orderbook/orderbook.dart';
import 'package:cryptocurrency_app/models/orderbook/orderbook_response/orderbook_response.dart';
import 'package:cryptocurrency_app/models/pair/pair_response/pair_response.dart';
import 'package:cryptocurrency_app/models/pair/pair_summary/pair_summary.dart';
import 'package:cryptocurrency_app/models/trades/trade/trade.dart';
import 'package:cryptocurrency_app/models/trades/trades_response.dart/trades_response.dart';
import 'package:cryptocurrency_app/repository/crypto_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'data/api_data.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await DotEnv.load();
  late ProviderContainer container;
  late DioAdapter dioAdapter;

  setUpAll(() async {
    container =
        ProviderContainer(overrides: [clientProvider.overrideWithValue(Dio())]);
    dioAdapter = DioAdapter();
    container.read(clientProvider).httpClientAdapter = dioAdapter;
  });

  test('Dio loads API_KEY from .env', () {
    final container = ProviderContainer();
    final headers = container.read(clientProvider).options.headers;
    expect(headers['X-CW-API-Key'], env['API_KEY']);
    // stuff
  });
  group('getPairs', () {
    test('getPairsSucess', () async {
      List<Pair>? pairs = MarketResponse.fromJson(ApiData.pairs).result;

      const market = 'binance';
      const path = '/markets/$market';

      dioAdapter.onGet(path, (request) {
        request.reply(200, ApiData.pairs);
      });

      final response = await container.read(cryptoRepository).getPairs(market);
      expect(pairs, response);
    });
    test('getPairsFailed', () async {
      const market = 'binance';
      const path = '/markets/$market';

      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      });

      expect(
          () async => await container.read(cryptoRepository).getPairs(market),
          throwsException);
    });
  });

  group('getPairSummary', () {
    test('getPairSummarySucess', () async {
      PairSummary? pairSummary =
          PairResponse.fromJson(ApiData.pair_btcusdt_summary).result;

      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/summary';

      dioAdapter.onGet(path, (request) {
        request.reply(200, ApiData.pair_btcusdt_summary);
      });

      final response =
          await container.read(cryptoRepository).getPairSummary(market, pair);
      expect(pairSummary, response);
    });
    test('getPairsSummaryFail', () async {
      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/summary';

      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      });

      expect(
          () async => await container
              .read(cryptoRepository)
              .getPairSummary(market, pair),
          throwsException);
    });
  });

  group('getPairOrdeBook', () {
    test('getPairOrdeBookSucess', () async {
      OrderBook? pairSummary =
          OrderBookResponse.fromJson(ApiData.pair_btcusdt_oderbook).result;

      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/orderbook';

      dioAdapter.onGet(path, (request) {
        request.reply(200, ApiData.pair_btcusdt_oderbook);
      });

      final response =
          await container.read(cryptoRepository).getOrderBook(market, pair);
      expect(pairSummary, response);
    });
    test('getPairOrdeBookFail', () async {
      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/orderbook';

      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      });

      expect(
          () async =>
              await container.read(cryptoRepository).getOrderBook(market, pair),
          throwsException);
    });
  });

  group('getPairTrades', () {
    test('getPairTradesSucess', () async {
      List<Trade>? trades =
          TradesResponse.fromJson(ApiData.pair_btcusdt_trades).result;

      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/trades';

      dioAdapter.onGet(path, (request) {
        request.reply(200, ApiData.pair_btcusdt_trades);
      });

      final response =
          await container.read(cryptoRepository).getTrades(market, pair);
      expect(trades, response);
    });
    test('getPairTradesFail', () async {
      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/trades';

      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      });

      expect(
          () async =>
              await container.read(cryptoRepository).getTrades(market, pair),
          throwsException);
    });
  });

  group('getPairGraph', () {
    test('getPairGraphSucess', () async {
      Graph? graph = GraphResponse.fromJson(ApiData.pair_btcusdt_graph).result;

      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/ohlc';

      dioAdapter.onGet(path, (request) {
        request.reply(200, ApiData.pair_btcusdt_graph);
      }, queryParameters: {"periods": "", "after": "", "before": ""});

      final response =
          await container.read(cryptoRepository).getPairGraph(market, pair);
      expect(graph, response);
    });
    test('getPairGraphFail', () async {
      const market = 'binance';
      const pair = 'btcusdt';
      const path = '/markets/$market/$pair/ohlc';

      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      }, queryParameters: {"periods": "", "after": "", "before": ""});

      expect(
          () async =>
              await container.read(cryptoRepository).getPairGraph(market, pair),
          throwsException);
    });
  });

  group('getExchanges', () {
    test('getExchangesSucess', () async {
      List<Exchange>? exchange =
          ExchangesResponse.fromJson(ApiData.exchanges).result;

      const path = '/exchanges';
      dioAdapter.onGet(path, (request) {
        request.reply(200, ApiData.exchanges);
      });

      final response = await container.read(cryptoRepository).getExchanges();
      expect(exchange, response);
    });

    test('getExchangesFail', () async {
      const path = '/exchanges';
      dioAdapter.onGet(path, (request) {
        request.reply(404, {});
      });

      expect(() async => await container.read(cryptoRepository).getExchanges(),
          throwsException);
    });
  });
}
