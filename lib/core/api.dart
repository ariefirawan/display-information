import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:myapp/models/models.dart';

class ApiService {
  static Future<List<CalenderEventModel>> getEvents() async {
    const String url =
        'https://script.google.com/macros/s/AKfycbwu3UKr8jD6-lgDybOUo53z4rOxPdepTU7XPxa-IkqDZLmjoRULEgAHVc1u5AYfx4b9/exec';

    try {
      final response = await Dio().get(url);
      if (kDebugMode) {
        print(response.data);
      }

      final List<dynamic> data = response.data;
      return data.map((json) => CalenderEventModel.fromJson(json)).toList();

    } catch (e) {
      throw Exception();
    }
  }
}
