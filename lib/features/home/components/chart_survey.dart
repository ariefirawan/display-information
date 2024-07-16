import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/features/home/home.dart';
import 'package:myapp/models/models.dart';

class ChartSurvey extends StatelessWidget {
  final String title;
  final bool? isSpak;
  final List<ChartModel> chartData;

  const ChartSurvey({
    super.key,
    this.isSpak = false,
    required this.chartData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.green,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              child: PieChart(
                PieChartData(
                  sections: chartData
                      .asMap()
                      .map<int, PieChartSectionData>((idx, data) {
                        final value = PieChartSectionData(
                          color: data.color,
                          value: data.percent,
                          title: '${data.percent}%',
                          titleStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                        return MapEntry(idx, value);
                      })
                      .values
                      .toList(),
                ),
              ),
            ),
            const SizedBox(width: 10),
            IndicatorsWidget(isSpak: isSpak),
          ],
        )
      ],
    );
  }
}
