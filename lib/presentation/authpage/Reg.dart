import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:grow_th/core/routes/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/teams_condisiion.dart';
import '../../core/theme/app_theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),

                // Header Section
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Hi welcome! Let’s get you started.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                const CustomTextField(
                  label: 'Full Name',
                  hintText: 'Enter your name',
                ),

                const SizedBox(height: 20),

                // Email Field
                const CustomTextField(
                  label: 'Email',
                  hintText: 'example@gmail.com',
                ),

                const SizedBox(height: 20),

                // Password Field
                const CustomTextField(
                  label: 'Password',
                  hintText: '**********',
                  isPassword: true,
                ),

                const SizedBox(height: 12),

                // Terms and Conditions Widget
                const CustomTermsWidget(),

                const SizedBox(height: 30),

                // Sign Up Button
                CustomButton(
                  text: 'Sign up',
                  onPressed: () {
                  },
                ),

                const SizedBox(height: 30),

                // Divider Section
                Row(
                  children: [
                    const Expanded(child: Divider(color: Colors.white24)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or Sign in with',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Expanded(child: Divider(color: Colors.white24)),
                  ],
                ),

                const SizedBox(height: 20),

                // Social Media Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton('assets/icon/Frame 427318974 (1).svg'),
                    const SizedBox(width: 20),
                    _buildSocialButton('assets/icon/appeol.svg'),
                  ],
                ),

                const SizedBox(height: 30),

                // Footer: Sign In Link
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.login),
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff88E696),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Optimized Social Button
  Widget _buildSocialButton(String assetPath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white10),
      ),
      child: SvgPicture.asset(
        assetPath,
        height: 28,
        width: 28,
      ),
    );
  }
}