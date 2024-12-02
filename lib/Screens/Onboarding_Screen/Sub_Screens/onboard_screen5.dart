import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Date_picker_Provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen5 extends StatelessWidget {
  const OnboardScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    final dateProvider = Provider.of<DatePickerProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(1.0.h, 45, 1.0.h, 1.0.h),
                child: const CustomTopRow(
                  textValue: 'Select Your Date',
                ),
              ),
              SizedBox(
                height: 400.h,
              ),
              // Display Selected Date
              Text(
                "Selected Date:",
                style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Text(
                "${dateProvider.selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Button to Open Date Picker
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: buttonForgroundColor,
                    backgroundColor: ButtonBackGroundColor),
                onPressed: () async {
                  // Show Date Picker Dialog
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: dateProvider.selectedDate,
                    firstDate: DateTime(2000), // Earliest selectable date
                    lastDate: DateTime(2100), // Latest selectable date
                  );

                  if (pickedDate != null) {
                    // Update the date in the provider
                    dateProvider.updateDate(pickedDate);
                  }
                },
                child: const Text("Pick Date"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
