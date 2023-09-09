import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/config/app_colors.dart';

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
}
