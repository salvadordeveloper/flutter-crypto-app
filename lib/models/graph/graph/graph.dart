import 'package:freezed_annotation/freezed_annotation.dart';

import '../pair_graph/pair_graph.dart';

part 'graph.freezed.dart';

@freezed
abstract class Graph with _$Graph {
  const factory Graph({required List<PairGraph> pairs}) = _Graph;

  factory Graph.fromJson(dynamic json) {
    List<PairGraph> pairs = <PairGraph>[];
    json.forEach((k, v) {
      pairs.add(PairGraph.fromJson(v, k));
    });
    return Graph(pairs: pairs);
  }
}
