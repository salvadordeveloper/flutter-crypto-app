import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/graph/graph/graph.dart';

ThemeMode getThemeMode(String type) {
  ThemeMode themeMode = ThemeMode.system;
  switch (type) {
    case "System":
      themeMode = ThemeMode.system;
      break;
    case "Dark":
      themeMode = ThemeMode.dark;
      break;
    case "Light":
      themeMode = ThemeMode.light;
      break;
  }
  return themeMode;
}

final themeModes = ["System", "Dark", "Light"];

final String defaultLenguage = "English";
final String defaultExchange = "binance";
final String defaultPair = "btcusdt";
final String defaultTheme = "System";

List<double> getPoints(Graph graph) {
  if (graph.pairs[0].points.length > 0)
    return graph.pairs[0].points.map((e) => e.closePrice).toList();
  else
    return [];
}

String epochToString(String epoch) {
  final DateTime timeStamp =
      DateTime.fromMillisecondsSinceEpoch(int.parse(epoch) * 1000);
  return DateFormat('dd/MM/yyyy').format(timeStamp);
}

final List<double> demoGraphData = const [
  86,
  45,
  59,
  65,
  1,
  62,
  26,
  41,
  88,
  60,
  17,
  18,
  58,
  67,
  55,
  56,
  97,
  96,
  22,
  57,
  29,
  69,
  19,
  30,
  47,
  63,
  33,
  37,
  40,
  51,
  53,
  91,
  71,
  92,
  28,
];
