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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
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
                  isPassword: true,
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
                    SuccessDialog.show(
                      context: context,
                      title: "Successful",
                      message: "Congratulations! Your password has been changed. Click continue to login",
                      buttonText: "Continue",
                      onPressed: () {
                        Get.back();
                        Get.offAllNamed(AppRoutes.login);
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