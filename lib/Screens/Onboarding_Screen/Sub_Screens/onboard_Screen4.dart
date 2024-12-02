import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_4_provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/List_Of_names.dart/List_Of_Reaction.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen4 extends StatelessWidget {
  const OnboardScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<OnboardScreen4_provider>(context);

    return Scaffold(
      body: Stack(
        children: [
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/image/questionBg.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom Top Row (Header)
              Padding(
                padding: EdgeInsets.fromLTRB(30.0.h, 45, 30.0.h, 1.0.h),
                child: const CustomTopRow(
                  textValue:
                      'What do you think, what reactions will happen to you if you quit ?',
                ),
              ),
              SizedBox(height: 50.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // First 4 options in rows of 2
                      Wrap(
                        spacing: 30.w, // Horizontal spacing
                        runSpacing: 30.h, // Vertical spacing
                        children: [
                          for (int i = 0; i < 4; i++)
                            GestureDetector(
                              onTap: () {
                                checkboxState.toggleSelection(i);
                              },
                              child: Container(
                                width: (MediaQuery.of(context).size.width -
                                        160.w) /
                                    2, // Half of the width minus padding
                                height: 150.h,
                                decoration: BoxDecoration(
                                  color: fieldBgColor,
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: Border.all(
                                    width: 8.w,
                                    color: checkboxState.checkboxStates[i]
                                        ? fieldTextColor
                                        : Colors.white,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    reactions[i],
                                    style: TextStyle(
                                      color: checkboxState.checkboxStates[i]
                                          ? fieldTextColor
                                          : fieldTextColor,
                                      fontSize: 70.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      // Last 2 options in a vertical column
                      Column(
                        children: [
                          for (int i = 4; i < reactions.length; i++)
                            GestureDetector(
                              onTap: () {
                                checkboxState.toggleSelection(i);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 150.h,
                                margin: EdgeInsets.only(bottom: 30.h),
                                decoration: BoxDecoration(
                                  color: fieldBgColor,
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: Border.all(
                                    width: 8.w,
                                    color: checkboxState.checkboxStates[i]
                                        ? fieldTextColor
                                        : Colors.white,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    reactions[i],
                                    style: TextStyle(
                                      color: checkboxState.checkboxStates[i]
                                          ? fieldTextColor
                                          : fieldTextColor.withOpacity(0.7),
                                      fontSize: 70.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:task_app/Provider/Onboard_Provider/Time_Picker_Provider.dart';
// import 'package:task_app/Utils/Colors/Colors_Name.dart';
// import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

// class OnboardScreen4 extends StatelessWidget {
//   const OnboardScreen4({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final timeProvider = Provider.of<TimePickerProvider>(context);

//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(1.0.h, 45, 1.0.h, 1.0.h),
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 25.0.h),
//                 child: const CustomTopRow(
//                   textValue: 'Select Your Time',
//                 ),
//               ),
//               SizedBox(
//                 height: 400.h,
//               ),
//               // Display Selected Time
//               Text(
//                 "Selected Time:",
//                 style: TextStyle(
//                     fontSize: 18,
//                     color: textColor,
//                     fontWeight: FontWeight.w500),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 timeProvider.selectedTime.format(context),
//                 style: TextStyle(
//                     fontSize: 24,
//                     color: textColor,
//                     fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 30),

//               // Button to Open Time Picker
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     foregroundColor: buttonTextColor,
//                     backgroundColor: buttonBgColor),
//                 onPressed: () async {
//                   // Show Time Picker Dialog
//                   TimeOfDay? pickedTime = await showTimePicker(
//                     context: context,
//                     initialTime: timeProvider.selectedTime,
//                   );

//                   if (pickedTime != null) {
//                     // Update the time in the provider
//                     timeProvider.updateTime(pickedTime);
//                   }
//                 },
//                 child: const Text("Pick Time"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
