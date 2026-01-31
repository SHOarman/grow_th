import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTermsWidget extends StatefulWidget {
  const CustomTermsWidget({super.key});

  @override
  State<CustomTermsWidget> createState() => _CustomTermsWidgetState();
}

class _CustomTermsWidgetState extends State<CustomTermsWidget> {
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isAccepted,
          activeColor: const Color(0xFF4CAF50),
          checkColor: Colors.white,
          onChanged: (bool? value) {
            setState(() {
              isAccepted = value ?? false;
            });
            print("Checkbox Status: $isAccepted");
          },
        ),

        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              children: [
                const TextSpan(text: "Agree with "),
                TextSpan(
                  text: "Terms & Conditions",
                  style: const TextStyle(
                    color: Color(0xFF4CAF50),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Terms & Conditions page call korar code
                      print("Navigate to Terms Page");
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => TermsPage()));
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}