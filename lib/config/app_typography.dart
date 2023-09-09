import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/config/app_colors.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///

class AppTypography {
  AppTypography._();
  static const textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
    displayMedium: TextStyle(
        fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
    displaySmall: TextStyle(
        fontSize: 8, fontWeight: FontWeight.w400, color: Colors.black),
    headlineLarge: TextStyle(
        fontSize: 36, fontWeight: FontWeight.w400, color: Colors.black),
    headlineMedium: TextStyle(
        fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
    headlineSmall: TextStyle(
        fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
    titleLarge: TextStyle(
        fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black),
    titleMedium: TextStyle(
        fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
    bodyLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black87),
    bodyMedium: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black87),
    bodySmall: TextStyle(
        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
    labelLarge: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
