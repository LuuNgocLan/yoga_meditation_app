import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/config/app_colors.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onAction;
  final String label;
  final bool isStrokeButton;
  final double width;

  const CommonButton({
    this.isStrokeButton = false,
    required this.onAction,
    required this.label,
    this.width = double.infinity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 52.0,
      child: isStrokeButton
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primary, width: 2),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
              ),
              onPressed: onAction,
              child: labelButton(context),
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
              ),
              onPressed: onAction,
              child: labelButton(context),
            ),
    );
  }

  Widget labelButton(BuildContext context) => Text(
        label,
        style: Theme.of(context).textTheme.labelLarge,
      );
}
