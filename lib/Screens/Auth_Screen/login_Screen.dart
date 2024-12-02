import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/Icons_Name/Icons_Name.dart';
import 'package:task_app/Utils/Lottie_Names/Lottie_Names.dart';
import 'package:task_app/Utils/Widgets/Check_Box_Dialoge.dart';
import 'package:task_app/Utils/Widgets/Rounded_Icon_Button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              children: [
                Lottie.asset(lottieName, height: 400.h, width: 400.w),
                Text(
                  "Your journey has just ",
                  style: TextStyle(
                      fontSize: 90.sp,
                      color: textColor,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "begaun!",
                  style: TextStyle(
                      fontSize: 90.sp,
                      color: textColor,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, top: 10.h, bottom: 40.h),
                child: RoundedIconButton(
                  imagePath: googleIcon,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CheckboxDialog(),
                    );
                  },
                  text: "Sign up with Google",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, top: 10.h, bottom: 80.h),
                child: RoundedIconButton(
                  imagePath: '',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CheckboxDialog(),
                    );
                  },
                  text: "Other Sign up Methods",
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
