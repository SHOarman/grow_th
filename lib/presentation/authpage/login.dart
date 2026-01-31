import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/custom_text_field/custom_textfield.dart';
import '../widgets/custom_button/custom_button.dart';
import '../../core/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
      child: Scaffold(
        backgroundColor:
            Colors.transparent, // গ্রেডিয়েন্ট দেখার জন্য ট্রান্সপারেন্ট
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
                        'Sign in',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Hi welcome back, You’ve been missed!',
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
                  hintText: 'example@gmail.com',
                ),
                SizedBox(height: 20),
                const CustomTextField(
                  label: 'Password',
                  hintText: '**********',
                  obscureText: true,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(height: 12),
                // Forgot Password বাটন
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      
                      
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(text: 'Sign in', onPressed: () {}),
                SizedBox(height: 30),
                Row(
                  children: [
                    const Expanded(child: Divider(color: Colors.white24)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or Sign in with',
                        style: TextStyle( color: Color(0xffFFFFFF), fontSize: 12),
                      ),
                    ),
                    const Expanded(child: Divider(color: Colors.white24)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton('assets/icon/Frame 427318974 (1).svg'),
                    SizedBox(width: 20),
                    _buildSocialButton('assets/icon/appeol.svg'),
                  ],
                ),
                SizedBox(height: 30),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF)),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff88E696),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String assetPath) {
    return Container(
      // padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white10),
      ),
      child: SvgPicture.asset(assetPath, height: 50, width: 50),
    );
  }
}
