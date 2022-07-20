import 'package:get/get.dart';

import '../../../data/models/weather.dart';
import '../../../data/repositories/weather_repository.dart';

class HomeController extends GetxController {
  final weather = Weather().obs;
  WeatherRopository? repo;

  @override
  void onInit() {
    fetchWeather();
    super.onInit();
  }

  HomeController() {
    repo = Get.find(tag: 'WeatherRepository');
  }

  static HomeController get to => Get.find();

  void fetchWeather() async {
    var data = await repo?.findAll();
    if (data != null) {
      weather.value = data;
    }
  }
}
