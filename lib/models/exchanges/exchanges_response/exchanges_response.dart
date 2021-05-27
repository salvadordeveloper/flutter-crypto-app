import 'package:cryptocurrency_app/models/exchanges/exchange/exchange.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchanges_response.freezed.dart';
part 'exchanges_response.g.dart';

@freezed
abstract class ExchangesResponse with _$ExchangesResponse {
  const factory ExchangesResponse({required List<Exchange> result}) =
      _ExchangesResponse;

  factory ExchangesResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangesResponseFromJson(json);
}
