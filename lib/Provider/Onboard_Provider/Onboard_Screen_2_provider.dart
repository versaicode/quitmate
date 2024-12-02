import 'package:flutter/material.dart';

class OnboardScreen2_provider with ChangeNotifier {
  // Checkbox states for each option
  List<bool> checkboxStates = List.generate(4, (_) => false);

  // Toggle a specific checkbox
  void toggleCheckbox(int index, bool value) {
    checkboxStates[index] = value;
    notifyListeners();
  }

  // Ensure only one checkbox is selected at a time
  void selectOnlyOne(int index) {
    for (int i = 0; i < checkboxStates.length; i++) {
      checkboxStates[i] = (i == index);
    }
    notifyListeners();
  }
}
