import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grow_th/core/routes/app_routes.dart';

import '../../core/theme/app_theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
      child: Scaffold(
        backgroundColor:
        Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Enter the verification code we just sent\n you on your e-mail address',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                const CustomTextField(
                  label: 'Email',
                  hintText: 'Enter your mail...',
                ),
                SizedBox(height: 30),
                CustomButton(text: 'Send Code', onPressed: () {

                  Get.toNamed(AppRoutes.emailverification);
                }),
                SizedBox(height: 30),


              ],
            ),
          ),
        ),
      ),
    );
  }

}
