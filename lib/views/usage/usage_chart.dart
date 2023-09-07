import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../model/barchart_model.dart';

class UsageChart extends StatelessWidget {
  UsageChart({Key? key, required this.points}) : super(key: key);

  List<BarChartModel> points;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2,
        child: LineChart(LineChartData(
            minX: 0,
            maxX: 7,
            minY: 0,
            maxY: 250,
            extraLinesData: ExtraLinesData(horizontalLines: [
              HorizontalLine(y: 100, color: Colors.white),
              HorizontalLine(y: 50, color: Colors.white),
              HorizontalLine(y: 150, color: Colors.white),
              HorizontalLine(y: 200, color: Colors.white),
            ]),
            borderData: FlBorderData(border: Border.all(color: Colors.white)),
            gridData:
                FlGridData(drawHorizontalLine: true, drawVerticalLine: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: _bottomTitles),
              leftTitles: AxisTitles(sideTitles: _leftTitles),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: _rightTitles),
            ),
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
              text = 'Mon';
              break;
            case 2:
              text = 'Tue';
              break;
            case 3:
              text = 'Wed';
              break;
            case 4:
              text = 'Thurs';
              break;
            case 5:
              text = 'Fri';
              break;
            case 6:
              text = 'Sat';
              break;
            case 7:
              text = 'Sun';
              break;
          }

          return Text(text, style: const TextStyle(color: Colors.white));
        },
      );

  SideTitles get _leftTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = '0';
              break;
            case 50:
              text = '50';
              break;
            case 100:
              text = '100';
              break;
            case 150:
              text = '150';
              break;
            case 200:
              text = '200';
              break;
            case 250:
              text = '250';
              break;
          }

          return Text(text,
              style: const TextStyle(color: Colors.white, fontSize: 10));
        },
      );

  SideTitles get _rightTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          return Text(text,
              style: const TextStyle(color: Colors.white, fontSize: 12));
        },
      );
}
