import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Basic colors
  static const Color primary = Color(0xFFFFC107);
  static const Color secondary = Color(0xFFE91E63);
  static const Color accent = Color(0xFF607D8B);

  // Text colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textHint = Color(0xFFBDBDBD);
  static const Color textDisabled = Color(0xFFBDBDBD);

  // Background colors
  static const Color bgLight = Color(0xFFF6F6F6);
  static const Color bgDark = Color(0xFF212121);
  static const Color backgroundPrimary = Color(0xFFF3F5FF);

  // Background Container colors
  static const Color containerLight = Color(0xFFF6F6F6);
  static const Color containerDark = Color(0xFF212121);

  // Button colors
  static const Color buttonPrimary = Color(0xFF3F51B5);
  static const Color buttonSecondary = Color(0xFFE91E63);
  static const Color buttonDisabled = Color(0xFFBDBDBD);

  // Border colors
  static const Color borderLight = Color(0xFFE0E0E0);
  static const Color borderDark = Color(0xFF424242);

  // Error and Validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFFFA000);
  static const Color info = Color(0xFF1976D2);

  // Shadow colors
  static Color shadow = AppColors.black.withOpacity(0.16);

  // Gradient colors
  static const Color gradientStart = Color(0xFF3F51B5);
  static const Color gradientEnd = Color(0xFFE91E63);
  static const Gradient linearGradient = LinearGradient(
    colors: [gradientStart, gradientEnd],
    begin: Alignment.topLeft,
    end: Alignment(0.707, -0.707),
  );

  // Neutral Shades
  static const Color opacBlack = Color(0x62000000);
  static const Color black = Color(0xFF232323);
  static const Color dark = Color(0xFF0C0F14);
  static const Color darkerGrey = Color(0xFF212121);
  static const Color darkGrey = Color(0xFF424242);
  static const Color grey = Color(0xFF616161);
  static const Color lightGrey = Color(0xFF9E9E9E);
  static const Color lighterGrey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Color(0x00000000);
}
