// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoritePair _$_$_FavoritePairFromJson(Map<String, dynamic> json) {
  return _$_FavoritePair(
    pair: Pair.fromJson(json['pair'] as Map<String, dynamic>),
    pairSummary:
        PairSummary.fromJson(json['pairSummary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FavoritePairToJson(_$_FavoritePair instance) =>
    <String, dynamic>{
      'pair': instance.pair,
      'pairSummary': instance.pairSummary,
    };
