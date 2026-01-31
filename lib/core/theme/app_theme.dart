import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(
    0xFF060430,
  ); // Dark Blue from gradient
  static const Color accentColor = Color(
    0xFF08062B,
  ); // Secondary gradient color
  static const Color orangeColor = Color(0xFFFF6B6B);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;






  static ThemeData get lightTheme {
    const Color topDark = Color(0xFF07052F);
    const Color topMid = Color(0xFF08062B);
    const Color bottomLight = Color(0xFF1D1772);
    const Color whiteColor = Colors.white;

    return ThemeData(
      primaryColor: topDark,
      scaffoldBackgroundColor: topDark,
      useMaterial3: true,

      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: whiteColor,
        displayColor: whiteColor,
      ),

      // বাটন থিম কনফিগারেশন
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF334195),
          foregroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
      ),
    );
  }

  static const Gradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.4, 1.0],
    colors: [
      Color(0xFF07052F), // Top Left
      Color(0xFF08062B), // Around 40% mark
      Color(0xFF1D1772), // Bottom Right
    ],
  );
}
