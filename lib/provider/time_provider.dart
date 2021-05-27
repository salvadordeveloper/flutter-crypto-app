import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimeGraphData {
  String name;
  String periods;
  String before;
  TimeGraphData(this.name, this.periods, this.before);
}

final timeList = [
  TimeGraphData("1H", "60", "1"),
  TimeGraphData("1D", "300", "24"),
  TimeGraphData("1W", "1800", "168"),
  TimeGraphData("1M", "3600", "730"),
  TimeGraphData("1Y", "86400", "8760"),
  TimeGraphData("ALL", "", "")
];

final timeDataProvider =
    StateProvider<TimeGraphData>((ref) => TimeGraphData("1M", "60", "12"));
