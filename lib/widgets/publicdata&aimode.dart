import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF1A1B4B), // ছবির মতো গাঢ় নীল ব্যাকগ্রাউন্ড
      // padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFeatureItem(Icons.verified, "Public Data Only"),
          SizedBox(width: 10,),

          _buildFeatureItem(Icons.lock_outline, "Secure & Private"),
          SizedBox(width: 10,),

          _buildFeatureItem(Icons.memory, "AI Powered"),
          SizedBox(width: 10,),

        ],
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 32,
          color: Colors.blueAccent,
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}