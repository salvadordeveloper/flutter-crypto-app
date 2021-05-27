import 'package:cryptocurrency_app/models/markets/favorite_pair/favorite_pair.dart';
import 'package:cryptocurrency_app/ui/screens/details.dart';
import 'package:cryptocurrency_app/ui/widgets/title_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';
class FavoritePairWidget extends HookWidget {
  final FavoritePair data;
  FavoritePairWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          TitlePrice(pair: data.pair),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Theme.of(context).dividerColor,
            height: 1,
            width: double.infinity,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    pair: data.pair,
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.add_chart,
                    size: 30,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  SizedBox(width: 10),
                  Text(LocaleKeys.openChart.tr(),
                      style: Theme.of(context).textTheme.headline3),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            color: Theme.of(context).dividerColor,
            height: 1,
            width: double.infinity,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
