import 'package:cryptocurrency_app/models/trades/trade/trade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trades_response.freezed.dart';

@freezed
abstract class TradesResponse with _$TradesResponse {
  const factory TradesResponse({List<Trade>? result}) = _TradesResponse;
  factory TradesResponse.fromJson(Map<String, dynamic> json) {
    final List<Trade> result = <Trade>[];
    json['result'].forEach((v) {
      result.add(new Trade.fromJson(v));
    });
    return TradesResponse(result: result);
  }
}
