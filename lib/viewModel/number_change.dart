import 'package:flutter/material.dart';

class NumberChangeViewModel extends ChangeNotifier {
  int _number = 0;

  int getNumber() {
    return _number;
  }

  void add() {
    _number += 1;
    notifyListeners();
  }

  void minus() {
    if (_number == 0) return;

    _number -= 1;
    notifyListeners();
  }
}
