import 'package:cryptocurrency_app/constants/exceptions.dart';
import 'package:cryptocurrency_app/provider/time_provider.dart';
import 'package:cryptocurrency_app/models/exchanges/exchange/exchange.dart';
import 'package:cryptocurrency_app/models/graph/graph/graph.dart';
import 'package:cryptocurrency_app/models/markets/favorite_pair/favorite_pair.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/models/orderbook/orderbook/orderbook.dart';
import 'package:cryptocurrency_app/models/pair/pair_summary/pair_summary.dart';
import 'package:cryptocurrency_app/models/trades/trade/trade.dart';
import 'package:cryptocurrency_app/provider/settings_provider.dart';
import 'package:cryptocurrency_app/repository/crypto_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../generated/locale_keys.g.dart';

final pairsProvider = FutureProvider<List<Pair>>((ref) async {
  final settings = ref.watch(cryptoSettings);
  String exchangeName = settings.maybeWhen(
      data: (details) => details.favoriteExchange,
      orElse: () =>
          throw DataException(message: LocaleKeys.errorSomethingWentWrong));
  List<Pair> pairs = await ref.read(cryptoRepository).getPairs(exchangeName);
  return pairs;
});

final searchTextProvider = StateProvider<String>((ref) => "");

final pairsSearchProvider = FutureProvider<List<Pair>>((ref) async {
  final pairs = ref.watch(pairsProvider);
  final search = ref.watch(searchTextProvider).state;

  List<Pair> list = [];
  pairs.maybeWhen(
      data: (data) {
        if (search.isNotEmpty)
          list =
              data.where((element) => element.pair.contains(search)).toList();
        else
          list = data;
      },
      orElse: () => {});
  return list;
});

final exchangesProvider = FutureProvider<List<Exchange>>((ref) async {
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());

  List<Exchange> exchanges =
      await ref.read(cryptoRepository).getExchanges(cancelToken: cancelToken);
  return exchanges;
});

final favoritePairProvider = FutureProvider<FavoritePair>((ref) async {
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());

  final settings = ref.watch(cryptoSettings);
  String exchangeName = settings.maybeWhen(
      data: (details) => details.favoriteExchange, orElse: () => "");
  String pairName = settings.maybeWhen(
      data: (details) => details.favoritePair, orElse: () => "");

  if (exchangeName.isEmpty || pairName.isEmpty) {
    throw DataException(message: LocaleKeys.errorSomethingWentWrong);
  }

  Pair pair = Pair(pair: pairName, exchange: exchangeName);
  try {
    PairSummary pairSummary = await ref
        .read(cryptoRepository)
        .getPairSummary(exchangeName, pairName, cancelToken: cancelToken);
    return FavoritePair(pair: pair, pairSummary: pairSummary);
  } on DataException catch (error) {
    if (error.message == LocaleKeys.errorRequestNotFound) {
      ref.read(cryptoSettings.notifier).verifyFavoritePair();
    }
    throw error;
  }
});

final pairSummaryProvider =
    FutureProvider.family<PairSummary, Pair>((ref, pair) async {
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());

  final pairSummary = await ref
      .read(cryptoRepository)
      .getPairSummary(pair.exchange, pair.pair, cancelToken: cancelToken);
  return pairSummary;
});

final pairOrderBookProvider =
    FutureProvider.family<OrderBook, Pair>((ref, pair) async {
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());

  final orderBook = await ref
      .read(cryptoRepository)
      .getOrderBook(pair.exchange, pair.pair, cancelToken: cancelToken);

  return orderBook;
});

final tradesProvider =
    FutureProvider.family<List<Trade>, Pair>((ref, pair) async {
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());

  final trades = await ref
      .read(cryptoRepository)
      .getTrades(pair.exchange, pair.pair, cancelToken: cancelToken);
  return trades;
});

final graphDataProvider = FutureProvider.family<Graph, Pair>((ref, pair) async {
  String interval = ref.watch(timeDataProvider).state.periods;
  String fromHours = ref.watch(timeDataProvider).state.before;
  String before = "";
  if (fromHours.isNotEmpty) {
    before = (DateTime.now()
                .subtract(Duration(hours: int.parse(fromHours)))
                .toUtc()
                .millisecondsSinceEpoch ~/
            1000)
        .toString();
  }

  final graph = await ref.read(cryptoRepository).getPairGraph(
      pair.exchange, pair.pair,
      periods: interval, before: before);
  return graph;
});
