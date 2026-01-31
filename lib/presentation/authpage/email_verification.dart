import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:grow_th/core/routes/app_routes.dart';
import '../../core/theme/app_theme.dart';
import '../../widgets/custom_button.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The gradient container should cover the whole screen
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SingleChildScrollView(
          // BouncingScrollPhysics gives a premium feel on iOS and Android
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                // Top spacing adjusted for SingleChildScrollView
                SizedBox(height: 160.h),

                Text(
                  "Verification Code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 12.h),

                Text(
                  "Enter the verification code we just sent\nyou on your e-mail address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 14.sp,
                  ),
                ),

                SizedBox(height: 40.h),

                // OTP Input Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) {
                    return Container(
                      width: 46.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: Colors.white.withOpacity(0.3)),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1 && index < 5) {
                            FocusScope.of(context).nextFocus();
                          } else if (value.isEmpty && index > 0) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        // Set to text if you want to allow letters like in your screenshot
                        keyboardType: TextInputType.text,
                        maxLength: 1,
                        style: TextStyle(
                          color: const Color(0xff00FF85),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          // Center the text vertically
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    );
                  }),
                ),

                SizedBox(height: 40.h),

                CustomButton(
                  text: "Verify Code",
                  onPressed: () {
                   Get.toNamed(AppRoutes.resetpassword);
                  },
                ),

                SizedBox(height: 25.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Haven't got the email yet? ",
                      style: TextStyle(color: Colors.white70, fontSize: 13.sp),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                          color: const Color(0xff00FF85),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                // Extra bottom padding to ensure scrolling works when keyboard is up
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}