import 'package:freezed_annotation/freezed_annotation.dart';

part 'allowance.freezed.dart';
part 'allowance.g.dart';

@freezed
abstract class Allowance with _$Allowance {
  const factory Allowance({
    required double cost,
    required double remaining,
  }) = _Allowance;

  factory Allowance.fromJson(Map<String, dynamic> json) =>
      _$AllowanceFromJson(json);
}
