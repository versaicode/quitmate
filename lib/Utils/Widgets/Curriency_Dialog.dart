import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Currency_Selection_Provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class CurrencyDialog extends StatelessWidget {
  const CurrencyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final currencyState = Provider.of<CurrencySelectionProvider>(context);

    return AlertDialog(
      backgroundColor: ButtonBackGroundColor,
      title: const Text('Select Currency'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _currencyTile("USD", currencyState),
          _currencyTile("EUR", currencyState),
          _currencyTile("GBP", currencyState),
          _currencyTile("INR", currencyState),
          _currencyTile("AUD", currencyState),
          _currencyTile("JPY", currencyState),
          const SizedBox(height: 20),
          // Show the continue button only when a currency is selected
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: bodyBackgroundColor,
                foregroundColor: buttonForgroundColor),
            onPressed: currencyState.selectedCurrency != null
                ? () {
                    Navigator.pop(context); // Close the dialog
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text("Selected: ${currencyState.selectedCurrency}"),
                      ),
                    );
                  }
                : null, // Disable button if no selection
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }

  // Function to create a currency tile with a checkbox
  Widget _currencyTile(
      String currency, CurrencySelectionProvider currencyState) {
    return ListTile(
      leading: Checkbox(
        value: currencyState.selectedCurrency == currency,
        onChanged: (bool? selected) {
          if (selected == true) {
            currencyState.selectCurrency(currency); // Select currency
          } else {
            currencyState.clearSelection(); // Deselect if clicked again
          }
        },
        activeColor: const Color.fromARGB(255, 142, 220, 146),
      ),
      title: Text(currency),
    );
  }
}
