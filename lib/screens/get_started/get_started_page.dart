import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/shared_view/common_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, top: 30.0, right: 24.0, bottom: 76.0),
              child: Text(
                "have_the_best",
                // style: AppTextStyle.titleLarge,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24),
                CommonButton(
                  label: 'S.current.sign_up',
                  isStrokeButton: true,
                  onAction: () {},
                  width: MediaQuery.of(context).size.width / 2 - 36.0,
                ),
                const SizedBox(width: 24.0),
                CommonButton(
                  label: 'S.current.login',
                  onAction: () {},
                  width: MediaQuery.of(context).size.width / 2 - 36.0,
                ),
                const SizedBox(width: 24),
              ],
            ),
            const SizedBox(height: 44.0),
          ],
        ),
      ),
    );
  }
}
