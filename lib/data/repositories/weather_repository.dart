import 'package:getx_project/data/helpers/weather_api_helper.dart';

import '../models/weather.dart';

class WeatherRopository {

  WeatherApiHelper? helper;

  WeatherRopository() {
    helper = WeatherApiHelper();
  }


  Future<Weather?> findAll() async{
    var json = await WeatherApiHelper().getRequest();
    if(json == null){
      return null;
    } else{
      var weather = Weather.fromJson(json);
      print(weather.toString());
      return weather;
    }
  }
}
