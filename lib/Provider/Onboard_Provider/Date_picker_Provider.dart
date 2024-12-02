import 'package:flutter/material.dart';

class DatePickerProvider extends ChangeNotifier {
  // Store the selected date
  DateTime _selectedDate = DateTime.now();

  // Getter for the selected date
  DateTime get selectedDate => _selectedDate;

  // Update selected date and notify listeners
  void updateDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
  }
}
