import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoga_meditation_app/config/app_colors.dart';
import 'package:yoga_meditation_app/config/app_images.dart';
import 'package:yoga_meditation_app/routes/routes.dart';
import 'package:yoga_meditation_app/screens/home/widgets/calories_chart_painter.dart';
import 'package:yoga_meditation_app/screens/home/widgets/pilate_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final imgWidth = MediaQuery.of(context).size.width;
    final imgHeight = imgWidth * 306 / 375;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SvgPicture.asset(
              AppImages.imgHeader,
              fit: BoxFit.contain,
              width: imgWidth,
              height: imgHeight,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60.0),
                    Text(
                      'Namaste,',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Vani',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 102.0),
                    Text(
                      'Let’s start basic',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'yoga and meditation',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 28.0),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      height: 173.0,
                      width: double.infinity,
                      child: Center(
                        child: CustomPaint(
                          size: const Size(double.infinity, 173.0),
                          painter: CaloriesChartPainter(
                            pathColor: AppColors.primary,
                            pathWidth: 4.0,
                            data: [
                              Calories(day: 'Mon', calories: 70),
                              Calories(day: 'Tue', calories: 40),
                              Calories(day: 'Wed', calories: 37),
                              Calories(day: 'Thu', calories: 28),
                              Calories(day: 'Fri', calories: 42),
                              Calories(day: 'Sat', calories: 7),
                              Calories(day: 'Sun', calories: 61),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Recommended Courses',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16.0),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        PilateItem(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.playMusic);
                          },
                        ),
                        const PilateItem(),
                        const PilateItem(),
                        const PilateItem(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
