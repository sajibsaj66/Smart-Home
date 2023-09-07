import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../model/barchart_model.dart';

class BarChart extends StatelessWidget {
  BarChart({Key? key, required this.points}) : super(key: key);

  List<BarChartModel> points;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: LineChart(LineChartData(
            minX: 0,
            maxX: 7,
            minY: 50,
            maxY: 150,
            extraLinesData: ExtraLinesData(
                horizontalLines: [HorizontalLine(y: 100, color: Colors.white)]),
            borderData: FlBorderData(border: Border.all(color: Colors.white)),
            gridData:
                FlGridData(drawHorizontalLine: true, drawVerticalLine: false),
            titlesData: FlTitlesData(
                bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                leftTitles: AxisTitles(sideTitles: _leftTitles),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles: AxisTitles(sideTitles: _rightTitles)),
            lineBarsData: [
              LineChartBarData(
                  spots: points.map((e) => FlSpot(e.x, e.y)).toList(),
                  isCurved: true,
                  color: Colors.white,
                  dotData: FlDotData(show: true)),
            ])));
  }

  SideTitles get _bottomTitles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 1:
            text = '1pm';
            break;
          case 2:
            text = '2pm';
            break;
          case 3:
            text = '3pm';
            break;
          case 4:
            text = '4pm';
            break;
          case 5:
            text = '5pm';
            break;
          case 6:
            text = '6pm';
            break;
          case 7:
            text = '7pm';
            break;
        }

        return Text(text, style: const TextStyle(color: Colors.white));
      });

  SideTitles get _leftTitles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 150:
            text = '150';
            break;
          case 100:
            text = '100';
            break;
          case 50:
            text = '50';
            break;
        }

        return Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 12));
      });

  SideTitles get _rightTitles => SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        return Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 12));
      });
}
