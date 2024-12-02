import 'package:flutter/material.dart';

class CheckboxState extends ChangeNotifier {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _bothTrue = false;

  bool get checkbox1 => _checkbox1;
  bool get checkbox2 => _checkbox2;

  bool get isAnySelected => _bothTrue;

  void toggleCheckbox1(bool value) {
    _checkbox1 = value;
    if (_checkbox1 && checkbox2) {
      _bothTrue = true;
    } else {
      _bothTrue = false;
    }
    notifyListeners();
  }

  void toggleCheckbox2(bool value) {
    _checkbox2 = value;
    if (_checkbox1 && checkbox2) {
      _bothTrue = true;
    } else {
      _bothTrue = false;
    }
    notifyListeners();
  }
}
