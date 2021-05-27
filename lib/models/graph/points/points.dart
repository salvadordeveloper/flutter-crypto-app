import 'package:freezed_annotation/freezed_annotation.dart';

part 'points.freezed.dart';

@freezed
abstract class Points with _$Points {
  const factory Points(
      {required double closeTime,
      required double openTime,
      required double highPrice,
      required double lowPrice,
      required double closePrice,
      required double volume,
      required double quoteVolume}) = _Points;

  factory Points.fromJson(dynamic json) {
    return _Points(
      closeTime: json[0].toDouble(),
      openTime: json[1].toDouble(),
      highPrice: json[2].toDouble(),
      lowPrice: json[3].toDouble(),
      closePrice: json[4].toDouble(),
      volume: json[5].toDouble(),
      quoteVolume: json[6].toDouble(),
    );
  }
}
