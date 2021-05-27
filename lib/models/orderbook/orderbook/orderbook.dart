import 'package:cryptocurrency_app/models/orderbook/price/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'orderbook.freezed.dart';

@freezed
abstract class OrderBook with _$OrderBook {
  const factory OrderBook(
    List<Price> asks,
    List<Price> bids,
    int seqNum,
  ) = _OrderBook;

  factory OrderBook.fromJson(Map<String, dynamic> json) {
    List<Price> asks = <Price>[];
    json['asks'].forEach((v) {
      asks.add(Price(
          price: double.parse(v[0].toString()),
          amount: double.parse(v[1].toString())));
    });

    List<Price> bids = <Price>[];
    json['bids'].forEach((v) {
      bids.add(
        Price(
          price: double.parse(v[0].toString()),
          amount: double.parse(
            v[1].toString(),
          ),
        ),
      );
    });
    final seqNum = json['seqNum'];
    return OrderBook(asks, bids, seqNum);
  }
}
