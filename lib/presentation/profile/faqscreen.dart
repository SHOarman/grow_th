import 'package:flutter/material.dart';
import 'package:grow_th/core/theme/app_theme.dart';
import 'package:grow_th/presentation/profile/profile_widget/ontapcard.dart';

class Faqscreen extends StatelessWidget {
  const Faqscreen({super.key});

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
                    "FAQ",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "FREQUENTLY ASKED QUESTIONS",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Ontapcard(title: 'How does this app help my business?',onTap: (){
                  print("How does this app help my business?");

                },),

                SizedBox(height: 18),
                Ontapcard(title: 'What kind of data does the app analyze?',onTap: (){
                  print("What kind of data does the app analyze?");

                },),

                SizedBox(height: 18),
                Ontapcard(title: 'Is this legal and safe to use?',onTap: (){
                  print("Is this legal and safe to use?");

                },),

                SizedBox(height: 18),
                Ontapcard(title: 'How accurate are the AI insights?',onTap: (){
                  print("How accurate are the AI insights?");

                },),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
