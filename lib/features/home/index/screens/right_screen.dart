import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/features/home/home.dart';

part '../sections/header_section.dart';

class RightScreen extends StatelessWidget {
  const RightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const _HeaderSection(),
          const Divider(thickness: 2),
          const DaftarHadir(),
          const SizedBox(height: 5),
          if (Responsive.isDesktop(context)) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChartSurvey(
                  title: 'Indeks Persepsi Kepuasan Pelayanan',
                  chartData: ChartData.dataSpkp,
                ),
                const SizedBox(width: 30),
                ChartSurvey(
                  title: 'Indeks Persepsi Anti Korupsi',
                  chartData: ChartData.dataSpak,
                  isSpak: true,
                ),
              ],
            )
          ],
          if (Responsive.isMobile(context)) ...[
            Column(
              children: [
                ChartSurvey(
                  title: 'Indeks Persepsi Kepuasan Pelayanan',
                  chartData: ChartData.dataSpkp,
                ),
                const SizedBox(height: 20),
                ChartSurvey(
                  title: 'Indeks Persepsi Anti Korupsi',
                  chartData: ChartData.dataSpak,
                  isSpak: true,
                ),
                const SizedBox(height: 10),
              ],
            )
          ]
        ],
      ),
    );
  }
}
