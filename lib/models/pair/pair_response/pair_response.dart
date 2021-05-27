import 'package:cryptocurrency_app/models/allowance/allowance.dart';
import 'package:cryptocurrency_app/models/pair/pair_summary/pair_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair_response.freezed.dart';
part 'pair_response.g.dart';

@freezed
abstract class PairResponse with _$PairResponse {
  const factory PairResponse(PairSummary result, Allowance allowance) =
      _PairResponse;

  factory PairResponse.fromJson(Map<String, dynamic> json) =>
      _$PairResponseFromJson(json);
}
