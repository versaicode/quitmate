import 'package:flutter/material.dart';

class OnboardScreen4_provider with ChangeNotifier {
  // Checkbox states for each option
  List<bool> checkboxStates = List.generate(6, (_) => false);

  // Toggle a specific checkbox for multiple selections
  void toggleSelection(int index) {
    checkboxStates[index] = !checkboxStates[index];
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
