import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_provider.dart';
import 'package:task_app/Screens/Auth_Screen/login_Screen.dart';
import 'package:task_app/Screens/Onboarding_Screen/List_Of_Screen.dart/List_Of_Screen.dart';
import 'package:task_app/Screens/Onboarding_Screen/Sub_Screens/Onboarding_Screen1.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = Provider.of<OnboardingProvider>(context).currentPage;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            // PageView for onboarding screens
            Padding(
              padding: EdgeInsets.only(top: 80.h),
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  context.read<OnboardingProvider>().updatePage(index);
                },
                children: currentPage == 0
                    ? [
                        OnboardScreen1(
                          pageController: _pageController,
                        )
                      ]
                    : screens,
              ),
            ),
            Positioned(
                top: 20.h,
                child: TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: Colors.black),
                    ))),

            // Dots indicator
            Positioned(
              top: 150.h,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  screens.length,
                  (index) => _buildDot(context, index),
                ),
              ),
            ),

            // Next or Get Started button
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Center(
                child: Consumer<OnboardingProvider>(
                  builder: (context, provider, child) {
                    return provider.currentPage == 0
                        ? const Text('')
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonBgColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              if (provider.currentPage < screens.length - 1) {
                                // Move to the next screen
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              } else {
                                // On the last screen, navigate to LoginScreen
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              provider.currentPage == screens.length - 1
                                  ? "Get Started"
                                  : "Next",
                              style: TextStyle(
                                  fontSize: 16, color: buttonTextColor),
                            ),
                          );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build dots for the bottom indicator
  Widget _buildDot(BuildContext context, int index) {
    return Consumer<OnboardingProvider>(
      builder: (context, provider, child) {
        return Container(
          height: 10,
          width: provider.currentPage == index ? 20 : 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: provider.currentPage == index
                ? ButtonBackGroundColor
                : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}
