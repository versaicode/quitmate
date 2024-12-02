import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/Utils/Colors/Colors_Name.dart';

class CustomTopRow extends StatelessWidget {
  final String textValue;
  const CustomTopRow({super.key, required this.textValue});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Responsive image size
          Image.asset(
            'Assets/Lottie/user.png',
            height: screenHeight * 0.25, // 20% of the screen height
            width: screenWidth * 0.3, // 30% of the screen width
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.w), // Spacing between image and text
          // Responsive text container
          Container(
            padding: EdgeInsets.all(30.0.w),
            constraints: BoxConstraints(
              maxWidth: screenWidth * 0.6, // 60% of the screen width
            ),
            decoration: BoxDecoration(
              color: questionBgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0.r),
                topRight: Radius.circular(30.0.r),
                bottomRight: Radius.circular(30.0.r),
                bottomLeft: Radius.circular(0.0.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFFB7185),
                  offset: Offset(2.w, 2.h),
                  blurRadius: 20.0.r,
                ),
              ],
            ),
            child: Text(
              textValue,
              style: TextStyle(
                fontSize: screenHeight * 0.02, // 2% of the screen height
                color: questionTextColor,
              ),
              maxLines: 5, // Adjust max lines for larger text
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task_app/Utils/Colors/Colors_Name.dart';

// class CustomTopRow extends StatelessWidget {
//   final String textValue;
//   const CustomTopRow({super.key, required this.textValue});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start, // Align items at the top
//         children: [
//           Image.asset(
//             'Assets/Lottie/user.png',
//             height: 600.h, // Adjust as per requirement
//             width: 600.w, // Adjust as per requirement
//             fit: BoxFit.cover,
//           ),
//           Container(
//             padding: const EdgeInsets.all(10.0), // Padding inside the bubble
//             margin: const EdgeInsets.all(1.0), // Margin outside the bubble
//             constraints:
//                 const BoxConstraints(maxWidth: 200), // Max width of the bubble
//             decoration: BoxDecoration(
//               color: questionBgColor, // Bubble color
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(20.0), // Rounded corner
//                 topRight: Radius.circular(20.0), // Rounded corner
//                 bottomRight: Radius.circular(20.0), // Rounded corner
//                 bottomLeft: Radius.circular(0.0), // Pointed corner
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: const Color.fromARGB(255, 134, 92, 1),
//                   offset: const Offset(2, 2), // Shadow position
//                   blurRadius: 5.0,
//                 ),
//               ],
//             ),
//             child: Text(
//               textValue,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: questionTextColor, // Text color
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task_app/Utils/Colors/Colors_Name.dart';

// class CustomTopRow extends StatelessWidget {
//   final String textValue;
//   const CustomTopRow({super.key, required this.textValue});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image.asset(
//           'Assets/Lottie/user.png',
//           height: 400.h,
//           width: 400.w,
//           fit: BoxFit.fitHeight,
//         ),
//         Container(
//           padding: const EdgeInsets.all(12.0), // Padding inside the bubble
//           margin: const EdgeInsets.all(10.0), // Margin outside the bubble
//           constraints:
//               const BoxConstraints(maxWidth: 250), // Max width of the bubble
//           decoration: BoxDecoration(
//             color: questionBgColor, // Bubble color
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(20.0), // Rounded corner
//               topRight: Radius.circular(20.0), // Rounded corner
//               bottomRight: Radius.circular(20.0), // Rounded corner
//               bottomLeft: Radius.circular(0.0), // Pointed corner
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: const Color.fromARGB(255, 134, 92, 1),
//                 offset: const Offset(2, 2), // Shadow position
//                 blurRadius: 5.0,
//               ),
//             ],
//           ),
//           child: Text(
//             textValue,
//             style: TextStyle(
//               fontSize: 16.0,
//               color: questionTextColor, // Text color
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
