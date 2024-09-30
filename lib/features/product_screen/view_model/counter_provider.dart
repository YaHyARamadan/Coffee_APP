import 'package:flutter/material.dart';

class ProviderCounter extends ChangeNotifier {
  int _counter = 1;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
  void decrementCounter() {
    if(counter > 0){
      _counter--;
      notifyListeners();
    }

  }

}
