import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xffE9BE6E);
  static const Color primaryDark = Color(0xFF272727);

  // Secondary colors
  static const Color secondary = Color(0xFFF4D99F);
  static const Color secondaryLight = Color(0xFFFAEFDC);

  // Accent colors
  static const Color accent = Color(0xFFFFC107);
  static const Color accentDark = Color(0xFFCFC5A3);

  static const Color homeCard = Color(0xffFAEFDC);
  static const Color homeCard2 = Color(0xFFF7E8D0);
  // Neutral colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color darkGrey = Color(0xFF616161);

  // Background colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFF5F5F5);

  // Text colors
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF757575);

  // Error and success
  static const Color error = Color(0xFFF44336);

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, white],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
