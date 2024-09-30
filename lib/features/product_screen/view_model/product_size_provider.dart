
import 'package:flutter/material.dart';

class ProductSizeProvider extends ChangeNotifier {
  String selectedProductSize = 'S';
  final List<String> _productSize = [
    'S',
    'M',
    'L',
  ];

  List<String> get productSize => _productSize;

  void selectedProductSizeFun(String choice) {
    selectedProductSize = choice;
    notifyListeners();
  }

}
