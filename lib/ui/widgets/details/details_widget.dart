import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/ui/widgets/details/summary_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../generated/locale_keys.g.dart';

import 'ohlc_section.dart';
import 'order_book_section.dart';
import 'trades_section.dart';

class DetailsWidget extends HookWidget {
  final Pair pair;
  const DetailsWidget({Key? key, required this.pair}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTabController(initialLength: 4);
    final graph = useProvider(graphDataProvider(pair));
    final summary = useProvider(pairSummaryProvider(pair));
    final orderBook = useProvider(pairOrderBookProvider(pair));
    final trades = useProvider(tradesProvider(pair));

    return Container(
      child: Column(
        children: [
          TabBar(
            labelColor: Theme.of(context).focusColor,
            unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
            unselectedLabelStyle: Theme.of(context).textTheme.headline4,
            labelStyle: Theme.of(context).textTheme.headline4,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Theme.of(context).focusColor,
            isScrollable: true,
            controller: _controller,
            tabs: [
              Container(
                  width: 100,
                  child: Tab(
                    text: LocaleKeys.summary.tr(),
                  )),
              Tab(
                text: LocaleKeys.orderbook.tr(),
              ),
              Tab(text: LocaleKeys.trades.tr()),
              Tab(
                text: LocaleKeys.ohlc.tr(),
              ),
            ],
          ),
          Container(
            height: 300,
            child: TabBarView(
              controller: _controller,
              children: [
                summary.when(
                    data: (data) => SummarySection(data: data),
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    error: (error, e) => Center(
                          child: Text(error.toString().tr()),
                        )),
                orderBook.when(
                    data: (data) => OrderBookSection(data: data),
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    error: (error, e) => Center(
                          child: Text(error.toString().tr()),
                        )),
                trades.when(
                    data: (data) => TradesSection(data: data),
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    error: (error, e) => Center(
                          child: Text(error.toString().tr()),
                        )),
                graph.when(
                    data: (data) => OHLCSection(
                          data: data,
                        ),
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    error: (error, e) => Center(
                          child: Text(error.toString().tr()),
                        )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
