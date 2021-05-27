import 'package:freezed_annotation/freezed_annotation.dart';
part 'trade.freezed.dart';

@freezed
abstract class Trade with _$Trade {
  const factory Trade(
      String id, String timestamp, String price, String amount) = _Trade;

  factory Trade.fromJson(List<dynamic> json) {
    final id = json[0].toString();
    final timestamp = json[1].toString();
    final price = json[2].toString();
    final amount = json[3].toString();
    return Trade(id, timestamp, price, amount);
  }
}
