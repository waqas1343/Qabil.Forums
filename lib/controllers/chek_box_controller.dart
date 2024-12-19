import 'package:flutter/material.dart';

class ChekBoxController extends ChangeNotifier {
  bool isCheked = true;

  void checkBox(bool value) {
    isCheked = value;
    notifyListeners();
  }
}
