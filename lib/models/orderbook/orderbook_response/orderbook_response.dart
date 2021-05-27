import 'package:cryptocurrency_app/models/orderbook/orderbook/orderbook.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'orderbook_response.freezed.dart';

@freezed
abstract class OrderBookResponse with _$OrderBookResponse {
  const factory OrderBookResponse(OrderBook result) = _OrderBookResponse;

  factory OrderBookResponse.fromJson(Map<String, dynamic> json) {
    final result = new OrderBook.fromJson(json['result']);
    return OrderBookResponse(result);
  }
}
