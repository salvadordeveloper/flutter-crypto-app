import 'package:freezed_annotation/freezed_annotation.dart';

import '../points/points.dart';

part 'pair_graph.freezed.dart';

@freezed
abstract class PairGraph with _$PairGraph {
  const factory PairGraph(
      {required String period, required List<Points> points}) = _PairGraph;

  factory PairGraph.fromJson(dynamic json, String period) {
    List<Points> points = <Points>[];
    json.forEach((v) {
      points.add(Points.fromJson(v));
    });
    return PairGraph(period: period, points: points);
  }
}
