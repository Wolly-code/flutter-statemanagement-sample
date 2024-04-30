import 'package:flutter/material.dart';

class CustomProvider with ChangeNotifier {
  int _value = 1;

  void addInt() {
    _value += 1;
  
    notifyListeners();
  }

  void removeInt() {
    _value -= 1;
    notifyListeners();
  }

  int get value {
    return _value;
  }
}
