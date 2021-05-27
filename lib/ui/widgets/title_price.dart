import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

class TitlePrice extends HookWidget {
  final Pair pair;

  TitlePrice({required this.pair});

  @override
  Widget build(BuildContext context) {
    final data = useProvider(pairSummaryProvider(pair));

    return data.when(
      data: (data) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(pair.pair,
                  maxLines: 1, style: Theme.of(context).textTheme.headline2),
              AutoSizeText(data.price.last.toString(),
                  maxLines: 1, style: Theme.of(context).textTheme.headline1),
              if (true)
                Row(children: [
                  AutoSizeText(data.price.change.absolute.toStringAsFixed(5),
                      textAlign: TextAlign.start,
                      minFontSize: 0,
                      stepGranularity: 0.1,
                      maxLines: 1,
                      style: TextStyle(
                          color: data.price.change.absolute >= 0
                              ? Colors.green
                              : Colors.red,
                          fontSize:
                              Theme.of(context).textTheme.headline5?.fontSize,
                          fontWeight: FontWeight.w800)),
                  AutoSizeText(
                      ' (${data.price.change.percentage.toStringAsFixed(2)}%)',
                      textAlign: TextAlign.start,
                      minFontSize: 0,
                      stepGranularity: 0.1,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline4),
                ]),
            ],
          ),
        );
      },
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, e) => Center(
        child: Text(error.toString().tr()),
      ),
    );
  }
}
