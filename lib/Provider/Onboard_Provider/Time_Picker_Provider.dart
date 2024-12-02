import 'package:flutter/material.dart';

class TimePickerProvider extends ChangeNotifier {
  // Selected time variable
  TimeOfDay _selectedTime = TimeOfDay.now();

  // Getter for selected time
  TimeOfDay get selectedTime => _selectedTime;

  // Update selected time and notify listeners
  void updateTime(TimeOfDay time) {
    _selectedTime = time;
    notifyListeners();
  }
}
