
import 'package:coffee_app/features/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';

import '../view/pages_structure.dart';

class BottomNavigatProvider extends ChangeNotifier {
  int _currentIndex = 0;

  List<Widget> selectedPage = [
    const HomeScreen(),const Text("cr7"), const Text("MESSI"),const Text("cr7"), const Text("MESSI"),
  ];




  int get currentIndex => _currentIndex;

  void currentIndexFun(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
