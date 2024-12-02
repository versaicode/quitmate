import 'package:flutter/material.dart';

class CurrencySelectionProvider extends ChangeNotifier {
  // Track selected currency
  String? _selectedCurrency;

  String? get selectedCurrency => _selectedCurrency;

  // Method to select a currency
  void selectCurrency(String currency) {
    _selectedCurrency = currency;
    notifyListeners(); // Notify listeners to update UI
  }

  // Clear selection
  void clearSelection() {
    _selectedCurrency = null;
    notifyListeners();
  }
}
