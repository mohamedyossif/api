import 'package:flutter/foundation.dart';
import 'package:summer_iti_http/data/remote/api_services.dart';
import 'package:summer_iti_http/model/weather.dart';
import 'package:summer_iti_http/model/weather_eror.dart';

class WeatherProvider extends ChangeNotifier
{
   Weather?weather;
  String? message;

  void getWeather(String cityName) {
    try {
      ApiServices().getWeather(cityName).then((value) {  
          if (value is Weather) weather = value;
          if (value is WeatherError)
            message = value.error!.info;  
      });
    } catch (e) {
     
      message = e.toString();
    }
    //notifyListeners();
  }
}