import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE1F5FE), Color(0xFFB3E5FC)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Congratulations Box
              Container(
                width: 700.w,
                padding: EdgeInsets.all(30.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAD7FF), // Light purple background
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  children: [
                    Text(
                      "Congratulations!",
                      style: TextStyle(
                        fontSize: 60.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF343A96), // Darker purple
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Starting your smoke-free journey is the best gift you've given yourself.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: const Color(0xFF7D7AAE), // Lighter purple text
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              // Sign-Up Button
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/onboarding');
                },
                child: Container(
                  width: 500.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF00C853), // Green color
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 50.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
