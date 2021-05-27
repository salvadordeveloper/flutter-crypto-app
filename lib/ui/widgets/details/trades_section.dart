import 'package:cryptocurrency_app/models/trades/trade/trade.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../constants/utils.dart' as Utils;

class TradesSection extends StatelessWidget {
  final List<Trade> data;
  const TradesSection({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  LocaleKeys.time.tr(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Expanded(
                child: Text(
                  LocaleKeys.price.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Expanded(
                child: Text(
                  LocaleKeys.amount.tr(),
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 250,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            Utils.epochToString(data[index].timestamp),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            data[index].price,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            data[index].amount,
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
