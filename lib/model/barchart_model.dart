import 'package:collection/collection.dart';

class BarChartModel {
  double x, y;

  BarChartModel({required this.x, required this.y});
}

List<BarChartModel> get barchartPoints {
  final data = [60, 70, 145, 80, 55, 55, 110, 95];
  return data
      .mapIndexed(((index, element) =>
          BarChartModel(x: index.toDouble(), y: element.toDouble())))
      .toList();
}

List<BarChartModel> get usagechartPoints {
  final data = [100, 120, 220, 105, 95, 100, 150, 130];
  return data
      .mapIndexed(((index, element) =>
          BarChartModel(x: index.toDouble(), y: element.toDouble())))
      .toList();
}
