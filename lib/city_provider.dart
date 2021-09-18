import 'package:flutter/foundation.dart';

class City extends ChangeNotifier
{
  String name='New York';
  chnageCityName(value) {  
          name = value;
          notifyListeners();
      }
}