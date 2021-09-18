import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_iti_http/Weather_provider.dart';
import 'package:summer_iti_http/city_provider.dart';
import 'package:summer_iti_http/information.dart';


class MyHomePage  extends StatelessWidget {
   List<String> cities = ['New York', 'Al Qahirah', 'San Francisco'];
 
  @override
  Widget build(BuildContext context) {
    WeatherProvider weatherProvider = Provider.of<WeatherProvider>(context);
    City city = Provider.of<City>(context);
    weatherProvider.getWeather(city.name);
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          DropdownButton<String>(
      value:city.name,
      items: cities
          .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ))
          .toList(),
      onChanged: (value) {
       city.chnageCityName(value);
      },
    ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) => Information(
                          weatherProvider.message, weatherProvider.weather),
                    ),
                  ),
              child: Text('Go to Info')),
        ],
      )),
    );
}
}
 