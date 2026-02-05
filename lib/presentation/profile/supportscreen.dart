import 'package:flutter/material.dart';
import 'package:grow_th/core/theme/app_theme.dart';
import 'package:grow_th/presentation/profile/profile_widget/ontapcard.dart';

class Supportscreen extends StatelessWidget {
  const Supportscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),

                Center(
                  child: Text(
                    "Support",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                 SizedBox(height: 50),
                Text(
                  "LEGAL",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                 SizedBox(height: 20),
                Ontapcard(title: 'Terms of Service',onTap: (){
                  print("Terms of Service");

                },),

                SizedBox(height: 18),
                Ontapcard(title: 'Privacy Policy',onTap: (){
                  print("Privacy Policy");

                },),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
