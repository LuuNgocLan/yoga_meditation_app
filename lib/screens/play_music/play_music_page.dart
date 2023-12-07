import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoga_meditation_app/config/app_images.dart';
import 'package:yoga_meditation_app/generated/l10n.dart';

class PlayMusicPage extends StatelessWidget {
  const PlayMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 60.0),
                    height: 55.0,
                    width: 55.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 21.0),
                    child: SvgPicture.asset(AppImages.icBack),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 23.0),
            // create container for image with size 335X403 border radius 38  and color white, stroke width 4.0
            Expanded(
              child: Container(
                width: 335,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(38.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(38.0),
                  child: Image.asset(
                    AppImages.imgThumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              S.current.relaxing_music,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              S.current.now_playing,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 12.0),
            const SizedBox(height: 61.0),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.icPrevious),
                const SizedBox(width: 10.0),
                SvgPicture.asset(AppImages.icPlay),
                const SizedBox(width: 10.0),
                SvgPicture.asset(AppImages.icNext),
              ],
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
