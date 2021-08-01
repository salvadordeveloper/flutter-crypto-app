import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/ui/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;

import 'line_chart.dart';

final currentPair = Provider<Pair>((ref) => Pair(exchange: "", pair: ""));

class PairTile extends HookConsumerWidget {
  const PairTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pair = ref.watch(currentPair);
    final summary = ref.watch(pairSummaryProvider(pair));
    final graph = ref.watch(graphDataProvider(pair));

    return Container(
      key: Keys.PAIR_TILE,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        pair: pair,
                      )));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 100,
          child: summary.when(
              data: (final summary) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: 80,
                        child: AutoSizeText(pair.pair,
                            textAlign: TextAlign.start,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.headline5),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: 50,
                        child: graph.when(
                            data: (data) => LineChartWidget(
                                  color: summary.price.change.absolute < 0
                                      ? Colors.red
                                      : const Color(0xff02d39a),
                                  data: Utils.getPoints(data),
                                ),
                            loading: () => LineChartWidget(loading: true),
                            error: (e, ex) => LineChartWidget(error: true)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.only(top: 25, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              summary.price.last.toStringAsFixed(2),
                              minFontSize: 10,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: AutoSizeText(
                                        summary.price.change.absolute
                                            .toStringAsFixed(5),
                                        textAlign: TextAlign.end,
                                        minFontSize: 0,
                                        stepGranularity: 0.1,
                                        maxLines: 1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .apply(
                                                color: summary.price.change
                                                            .absolute >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red)),
                                  ),
                                  AutoSizeText(
                                      ' (${summary.price.change.percentage.toStringAsFixed(2)}%)',
                                      textAlign: TextAlign.end,
                                      minFontSize: 0,
                                      stepGranularity: 0.1,
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stk) =>
                  Center(child: Text(error.toString().tr()))),
        ),
      ),
    );
  }
}
