import 'package:cryptocurrency_app/models/pair/change/change.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'price.freezed.dart';
part 'price.g.dart';

@freezed
abstract class Price with _$Price {
  const factory Price({
    required double last,
    required double high,
    required double low,
    required Change change,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}
