import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xFF000000);
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFFE4B679), Color(0xFFFEE5C4)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const Color secondaryColor = Color(0xFFE4B679);
  static const Color secondaryColorLight = Color(0xffF0CC9C);
  static const Color secondaryColorDark = Color(0xffE0CAAC);
  static const Color avatarColor = Color(0xff313131);
  static Color textPrimary = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFD9D9D9);
  static const Color containerColor = Color(0xFF939393);
  static const Color grey = Color(0xFF535353);
  static const Color textSecondary = Color(0xFFB0B0B0);
  static const Color cardBackground = Color(0xFF1E1E1E);
  static const LinearGradient buttonPrimaryGradient = LinearGradient(
    colors: [Color(0xFFE4B679), Color(0xFFFEE5C4)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const Color buttonSecondary = Color(0xFF333333);
  static const Color border = Color(0xFF2C2C2C);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFF44336);
}
