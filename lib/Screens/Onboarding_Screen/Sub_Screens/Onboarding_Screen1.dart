import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Provider/Onboard_Provider/Onboard_provider.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';
import 'package:task_app/Utils/Widgets/Custom_Top_Row.dart';

class OnboardScreen1 extends StatefulWidget {
  @immutable
  final PageController pageController;
  const OnboardScreen1({super.key, required this.pageController});
  @override
  _OnboardScreen1State createState() => _OnboardScreen1State();
}

class _OnboardScreen1State extends State<OnboardScreen1> {
  // Controllers for the text fields
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/image/questionBg.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          SafeArea(
            // padding: EdgeInsets.all(40.0.h),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0.h, 40, 30.0.h, 1.0.h),
                    // padding: EdgeInsets.symmetric(vertical: 1.0.h),
                    child: const CustomTopRow(
                      textValue: 'What should we call you',
                    ),
                  ),
                  // First Name Text Field
                  SizedBox(
                    height: 100.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(
                            color: fieldTextColor,
                          ),
                          controller: _firstNameController,
                          decoration: textFieldDecoration('First Name'),
                        ),
                        SizedBox(height: 56.h),

                        // Middle Name Text Field
                        TextField(
                          style: TextStyle(
                            color: fieldTextColor,
                          ),
                          controller: _middleNameController,
                          decoration: textFieldDecoration('Middle Name'),
                        ),
                        SizedBox(height: 56.h),
                        // Last Name Text Field
                        TextField(
                          style: TextStyle(
                            color: fieldTextColor,
                          ),
                          controller: _lastNameController,
                          decoration: textFieldDecoration('Last Name'),
                        ),
                        SizedBox(height: 56.h),
                        // Last Name Text Field
                        TextField(
                          style: TextStyle(
                            color: fieldTextColor,
                          ),
                          keyboardType: TextInputType.phone,
                          controller: _mobileNoController,
                          decoration: textFieldDecoration('Mobile No:-'),
                        ),
                        SizedBox(height: 36.h),
                      ],
                    ),
                  ),

                  // Submit Button
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: buttonTextColor,
                          backgroundColor: buttonBgColor),
                      onPressed: () {
                        // Display the entered data
                        String firstName = _firstNameController.text;
                        String middleName = _middleNameController.text;
                        String lastName = _lastNameController.text;

                        context.read<OnboardingProvider>().updatePage(1);

                        // Show a snack bar with the entered names
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  'Name: $firstName $middleName $lastName')),
                        );
                        widget.pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration textFieldDecoration(String hinttext) {
    return InputDecoration(
      fillColor: fieldBgColor,
      filled: true,
      hintText: hinttext,
      hintStyle: TextStyle(color: fieldTextColor),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.white, width: 2.0)),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(color: fieldTextColor, width: 3.0),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }
}
