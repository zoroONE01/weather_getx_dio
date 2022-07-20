import 'dart:convert';

import 'package:dio/dio.dart';

class WeatherApiHelper {
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String current = '/current.json';
  Map<String, String> param = {
    'key': '6a05867a39224685af320357221807',
    'q': 'Paris'
  };

  Future<Map<String, dynamic>?> getRequest() async {
    var response = await Dio().get(baseUrl + current, queryParameters: param);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
