import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void updatePage(int page) {
    _currentPage = page;
    notifyListeners(); // Notify listeners when state changes
  }
}
