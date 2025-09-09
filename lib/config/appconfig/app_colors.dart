import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xffE9BE6E);  // لون ذهبي دافئ
  static const Color primaryDark = Color(0xFF272727);  // أسود داكن

  // Secondary colors
  static const Color secondary = Color(0xFFF4D99F);  // لون أصفر فاتح
  static const Color secondaryLight = Color(0xFFFAEFDC);  // لون كريمي دافئ

  // Accent colors
  static const Color accent = Color(0xFFF4D99F);  // لون أصفر فاتح
  static const Color accentDark = Color(0xFFF0E7DC);  // لون كريمي فاتح

  static const Color homeCard = Color(0xffFAEFDC);  // لون كريمي دافئ
  static const Color homeCard2 = Color(0xFFF7E8D0);  // لون بيج دافئ

  // Neutral colors
  static const Color white = Color(0xFFFFFFFF);  // أبيض
  static const Color black = Color(0xFF272727);  // أسود داكن
  static const Color grey = Color(0xFF9E9E9E);  // رمادي
  static const Color lightGrey = Color(0xFFF5F5F5);  // رمادي فاتح
  static const Color darkGrey = Color(0xFF616161);  // رمادي داكن


  static const Color background = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFF5F5F5);


//* ================ Home Bottom Cards Color===============*//
  static const Color bottomCardColor = Color(0xFFE3B260);
  static  Color waveCardColor = Color(0xFFFFFAF0);
  static const Color bottomCardColor2 = Color(0xFFE8DCCC);
  static  Color waveCardColor2 = Color(0xFFE8DCCC);





  static const Color textPrimary = Color(0xFF000000);  // نص أسود
  static const Color textSecondary = Color(0xFF757575);  // نص رمادي

  // Error and success
  static const Color error = Color(0xFFF44336);  // خطأ

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
