// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PairResponse _$_$_PairResponseFromJson(Map<String, dynamic> json) {
  return _$_PairResponse(
    PairSummary.fromJson(json['result'] as Map<String, dynamic>),
    Allowance.fromJson(json['allowance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PairResponseToJson(_$_PairResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'allowance': instance.allowance,
    };
