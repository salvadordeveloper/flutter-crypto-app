import 'package:freezed_annotation/freezed_annotation.dart';
part 'pair.g.dart';
part 'pair.freezed.dart';

@freezed
abstract class Pair with _$Pair {
  const factory Pair({
    int? id,
    required String exchange,
    required String pair,
    bool? active,
    String? route,
  }) = _Pair;

  factory Pair.fromJson(Map<String, dynamic> json) => _$PairFromJson(json);
}
