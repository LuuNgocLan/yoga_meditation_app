import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/config/app_images.dart';
import 'package:yoga_meditation_app/routes/routes.dart';
import 'package:yoga_meditation_app/shared_view/common_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: const Color(0xffF8F8F6),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              AppImages.imgStarted,
              fit: BoxFit.fitWidth,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Text(
                  'Have the best',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'Yoga Experience',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Transform your body and mind with our comprehensive yoga app. Discover expert-led classes, personalized routines',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                CommonButton(
                  label: 'Start Journey',
                  onAction: () {
                    Navigator.popAndPushNamed(context, Routes.home);
                  },
                  width: 240.0,
                ),
                const SizedBox(width: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
