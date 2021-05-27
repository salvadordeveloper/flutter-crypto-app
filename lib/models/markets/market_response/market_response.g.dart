// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketResponse _$_$_MarketResponseFromJson(Map<String, dynamic> json) {
  return _$_MarketResponse(
    result: (json['result'] as List<dynamic>)
        .map((e) => Pair.fromJson(e as Map<String, dynamic>))
        .toList(),
    allowance: Allowance.fromJson(json['allowance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_MarketResponseToJson(_$_MarketResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'allowance': instance.allowance,
    };
