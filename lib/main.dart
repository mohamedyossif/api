import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_iti_http/Weather_provider.dart';
import 'package:summer_iti_http/city_provider.dart';
import 'city_provider.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(providers: [
ChangeNotifierProvider<WeatherProvider>(create: (_)=>WeatherProvider()),
ChangeNotifierProvider<City>(create: (_)=>City()),

      ],
      
      child: MyHomePage(),
      ),
    );
  }
}
