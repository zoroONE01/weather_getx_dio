import 'package:get/get.dart';
import 'package:getx_project/data/repositories/weather_repository.dart';
import 'package:getx_project/ui/pages/home_page/home_controller.dart';

class ForecastBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeatherRopository(), tag: 'WeatherController');
  }
}
