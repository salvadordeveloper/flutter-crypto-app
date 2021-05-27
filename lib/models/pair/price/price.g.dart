// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Price _$_$_PriceFromJson(Map<String, dynamic> json) {
  return _$_Price(
    last: (json['last'] as num).toDouble(),
    high: (json['high'] as num).toDouble(),
    low: (json['low'] as num).toDouble(),
    change: Change.fromJson(json['change'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'last': instance.last,
      'high': instance.high,
      'low': instance.low,
      'change': instance.change,
    };
