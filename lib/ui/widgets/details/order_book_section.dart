import 'package:cryptocurrency_app/models/orderbook/orderbook/orderbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../generated/locale_keys.g.dart';

class OrderBookSection extends StatelessWidget {
  final OrderBook data;
  OrderBookSection({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                LocaleKeys.bid.tr(),
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                LocaleKeys.ask.tr(),
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: data.bids.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              data.bids[index].amount.toString(),
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              data.bids[index].price.toString(),
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Flexible(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: data.asks.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              data.asks[index].amount.toString(),
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              data.asks[index].price.toString(),
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
