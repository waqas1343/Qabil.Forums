import 'package:flutter/material.dart';

class Splashscreencontroller extends ChangeNotifier {
  bool splashLoading = true;

  Future<void> appLoading() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    splashLoading = true;
    notifyListeners();
  }
}
