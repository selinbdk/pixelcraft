import 'package:flutter/material.dart';
import 'package:pixelcraft/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.messages,
    this.icon,
    this.iconAlignment = IconAlignment.start,
  });

  final String messages;
  final Widget? icon;
  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: () {},
        label: Text(
          messages,
          style: const TextStyle(
            color: AppColors.primaryLabel,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: icon,
      );
    }

    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(AppColors.buttonColor),
      ),
      onPressed: () {},
      child: Text(
        messages,
        style: const TextStyle(
          color: AppColors.primaryLabel,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
