import 'package:freezed_annotation/freezed_annotation.dart';
part 'price.freezed.dart';

@freezed
abstract class Price with _$Price {
  const factory Price({required double price, required double amount}) = _Price;
}
