//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
//import 'package:pixelcraft/config/router/app_router.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.messages,
    required this.backgroundColor,
    required this.foregroundColor,
    super.key,
    this.icon,
    this.iconAlignment = IconAlignment.start,
  });

  final String messages;
  final Widget? icon;
  final IconAlignment iconAlignment;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      disabledBackgroundColor: ColorName.secondaryBackground,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      fixedSize: Size(1.sw, 42.dm),
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.sp,
      ),
    );

    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        style: style,
        label: Text(
          messages,
          style: const TextStyle(color: ColorName.primaryLabel),
        ),
        icon: icon,
      );
    }

    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        messages,
      ),
    );
  }
}
