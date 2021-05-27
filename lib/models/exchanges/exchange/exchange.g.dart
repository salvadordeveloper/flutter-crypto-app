// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exchange _$_$_ExchangeFromJson(Map<String, dynamic> json) {
  return _$_Exchange(
    id: json['id'] as int,
    symbol: json['symbol'] as String,
    name: json['name'] as String,
    route: json['route'] as String,
    active: json['active'] as bool,
  );
}

Map<String, dynamic> _$_$_ExchangeToJson(_$_Exchange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'route': instance.route,
      'active': instance.active,
    };
