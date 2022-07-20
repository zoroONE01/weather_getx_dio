import 'package:get/get.dart';
import 'package:getx_project/data/repositories/weather_repository.dart';
import 'package:getx_project/ui/pages/home_page/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(() => HomeController(),tag: 'home_controller');
    Get.put(() => WeatherRopository(), tag: 'weather_dependencies');
  }

}