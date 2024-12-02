import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_Screen_2_provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/List_Of_names.dart/List_Of_Names.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<OnboardScreen2_provider>(context);

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
                  textValue: 'For what reason you want to quit?',
                ),
              ),
              SizedBox(height: 50.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Dynamically generate 4 rows, one for each option
                      for (int i = 0; i < names.length; i++) ...[
                        GestureDetector(
                          onTap: () {
                            // Select only one option at a time
                            checkboxState.selectOnlyOne(i);
                          },
                          child: Container(
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
                                names[i],
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
                      SizedBox(height: 20.h),
                      // Disclaimer below the options
                      Text(
                        "* Please select only one option from the above choices.",
                        style: TextStyle(
                          fontSize: 50.sp,
                          color: const Color.fromARGB(255, 1, 67, 57),
                        ),
                        textAlign: TextAlign.center,
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
