import 'package:flutter/material.dart';
import 'package:myapp/core/preferences/preferences.dart';
import 'package:myapp/models/models.dart';

class ChartData {
  static List<ChartModel> dataSpak = [
    ChartModel(name: 'Sangat Baik', percent: 80, color: AppColors.green),
    ChartModel(name: 'Baik', percent: 15, color: AppColors.yellow),
    ChartModel(name: 'Kurang Baik', percent: 5, color: Colors.red),
  ];

  static List<ChartModel> dataSpkp = [
    ChartModel(name: 'Sangat Baik', percent: 90, color: AppColors.green),
    ChartModel(name: 'Baik', percent: 10, color: AppColors.yellow),
  ];
}
