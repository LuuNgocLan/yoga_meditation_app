import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/config/app_colors.dart';
import 'package:yoga_meditation_app/config/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          actions: [],
          leading: null,
        ),
        body: const SizedBox(height: 72.0),
      ),
    );
  }

  Widget titleOfContent(
    String title,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 24.0),
        Text(
          title,
          style: const TextStyle(
              fontFamily: AppTextStyle.loraSemiBold,
              fontSize: 20.0,
              color: Colors.white),
        ),
        const Spacer(),
        Text(
          'S.current.see_all',
          style: const TextStyle(
              fontFamily: AppTextStyle.loraRegular,
              fontSize: 13.0,
              color: AppColors.primary),
        ),
        const SizedBox(width: 24.0),
      ],
    );
  }
}
