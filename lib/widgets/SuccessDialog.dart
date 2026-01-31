import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_button.dart'; // Tomar CustomButton er path dao

class SuccessDialog {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onPressed,
    String? imagePath, // Optional: jodi stickier thake
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color(0xFF060B1E), // Deep Dark Blue
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Successful Sticker Section
                Container(
                  width: 155.w,
                  height: 155.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imagePath != null
                          ? AssetImage(imagePath) as ImageProvider
                          : const NetworkImage('https://cdn-icons-png.flaticon.com/512/5290/5290058.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 12.h),

                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 14.sp,
                  ),
                ),

                SizedBox(height: 30.h),

                // Reusable Custom Button
                CustomButton(
                  text: buttonText,
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}