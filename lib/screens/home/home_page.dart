import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoga_meditation_app/config/app_images.dart';
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      height: 173.0,
                      width: double.infinity,
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
                      children: const [
                        PilateItem(),
                        PilateItem(),
                        PilateItem(),
                        PilateItem(),
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
