import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yoga_meditation_app/config/app_images.dart';

class PilateItem extends StatefulWidget {
  const PilateItem({super.key});

  @override
  State<StatefulWidget> createState() => _PilateItem();
}

class _PilateItem extends State<PilateItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              AppImages.imgSample,
              height: 75.0,
              width: 75.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yoga Pilates',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                '5 lessons',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2B2B2B)),
              ),
              const SizedBox(height: 8.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'By Sarah William • All Level • ',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFAAAAAA)),
                  ),
                  SvgPicture.asset(AppImages.icStar),
                  const SizedBox(width: 5.0),
                  const Text(
                    '4.5',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2B2B2B)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
