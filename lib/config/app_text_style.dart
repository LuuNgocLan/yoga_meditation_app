import 'dart:ui';

import 'package:yoga_meditation_app/config/app_colors.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///

class AppTextStyle {
  AppTextStyle._();
  static const String loraRegular = "Lora-Regular";
  static const String loraMedium = "Lora-Medium";
  static const String loraSemiBold = "Lora-SemiBold";
  static const String loraBold = "Lora-Bold";

  static final titleLarge = TextStyle(
    fontSize: 36,
    fontFamily: AppTextStyle.loraMedium,
    color: AppColors.textColor,
  );
}
