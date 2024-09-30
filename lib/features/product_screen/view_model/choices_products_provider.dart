import 'package:flutter/material.dart';

class ChoiceProductProvider extends ChangeNotifier {
  String selectedProductType = 'White Chocolate';


  final List<String> _productType = [
    'White Chocolate',
    'Milk Chocolate',
    'Dark Chocolate',
  ];

  List<String> get productType => _productType;

  void selectedProductTypeFun(String choice) {
    selectedProductType = choice;
    notifyListeners();
  }
}
