import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange.freezed.dart';
part 'exchange.g.dart';

@freezed
abstract class Exchange with _$Exchange {
  const factory Exchange(
      {required int id,
      required String symbol,
      required String name,
      required String route,
      required bool active}) = _Exchange;

  factory Exchange.fromJson(Map<String, dynamic> json) =>
      _$ExchangeFromJson(json);
}
