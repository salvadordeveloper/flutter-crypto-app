import 'package:cryptocurrency_app/models/pair/pair_summary/pair_summary.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../generated/locale_keys.g.dart';

class SummarySection extends StatelessWidget {
  final PairSummary data;
  const SummarySection({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                LocaleKeys.price.tr(),
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.last.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                data.price.last.toString(),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.high.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                data.price.high.toString(),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.low.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                data.price.low.toString(),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.change.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                data.price.change.absolute.toString(),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                LocaleKeys.volume.tr(),
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.volume.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                data.volume.toString(),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.quoteVolume.tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                data.volumeQuote.toString(),
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
