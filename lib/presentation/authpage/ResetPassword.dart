import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grow_th/core/routes/app_routes.dart';
import '../../core/theme/app_theme.dart';
import '../../widgets/SuccessDialog.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background gradient পুরো স্ক্রিনে দেখানোর জন্য Container ব্যবহার করা হয়েছে
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            // ScreenUtil ছাড়া ফিক্সড প্যাডিং
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 160),

                const Text(
                  "Reset Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                // New Password Field
                const CustomTextField(
                  label: "New Password",
                  hintText: "**********",
                  isPassword: true, // আমাদের বানানো dynamic toggle logic
                ),

                const SizedBox(height: 20),

                // Confirm Password Field
                const CustomTextField(
                  label: "Confirm Password",
                  hintText: "**********",
                  isPassword: true,
                ),

                const SizedBox(height: 40),

                // Confirm Button
                CustomButton(
                  text: "Confirm",
                  onPressed: () {
                    // সাকসেস ডায়ালগ দেখানো
                    SuccessDialog.show(
                      context: context,
                      title: "Successful",
                      message: "Congratulations! Your password has been changed. Click continue to login",
                      buttonText: "Continue",
                      onPressed: () {
                        // ডায়ালগ বন্ধ করে লগইন স্ক্রিনে যাওয়া
                        Get.back(); // ডায়ালগ বন্ধ করার জন্য
                        Get.offAllNamed(AppRoutes.login); // সব রুট ক্লিয়ার করে লগইনে যাওয়া
                      },
                    );
                  },
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}