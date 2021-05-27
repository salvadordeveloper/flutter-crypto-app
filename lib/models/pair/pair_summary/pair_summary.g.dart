// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pair_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PairSummary _$_$_PairSummaryFromJson(Map<String, dynamic> json) {
  return _$_PairSummary(
    price: Price.fromJson(json['price'] as Map<String, dynamic>),
    volume: (json['volume'] as num).toDouble(),
    volumeQuote: (json['volumeQuote'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_PairSummaryToJson(_$_PairSummary instance) =>
    <String, dynamic>{
      'price': instance.price,
      'volume': instance.volume,
      'volumeQuote': instance.volumeQuote,
    };
