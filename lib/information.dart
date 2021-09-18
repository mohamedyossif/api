import 'package:flutter/material.dart';
import 'package:summer_iti_http/model/weather.dart';
class Information extends StatelessWidget {
String ?message;
Weather ?weather;
static const id='/info' ;
Information(this.message,this.weather);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(
        child: weather != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              SizedBox(height: 30,),
               Text('${weather!.location!.name}'),
                  Text('${weather!.current!.temperature}'),
                  Image.network('${weather!.current!.weather_icons![0]}'),
                  Text('${weather!.current!.weather_descriptions![0]}'),
                ]
            )
            : Column(
              children: [
                Text('$message'),
              ],
            ),
      ),
      
      ),
    );
  }
}