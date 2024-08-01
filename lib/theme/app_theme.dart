import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppColors {
  static const Color primaryBlue = Color(0xFF0A84FF);
  static const Color primaryLabel = Color(0xFFFFFFFF);
  static const Color secondaryLabel = Color(0xFFEBEBF5);
  static const Color primaryBackgroundColor = Color(0xFF000000);
  static const Color secondaryBackgroundColor = Color(0xFF1C1C1E);
}

abstract class AppPadding {
  static const EdgeInsets onboardingPadding = EdgeInsets.all(24);
  static const EdgeInsets pagePadding = EdgeInsets.symmetric(vertical: 12, horizontal: 24);
}

extension SizedBoxExtension on num {
  SizedBox get vSpace => SizedBox(
        height: ScreenUtil().setHeight(this),
      );
  SizedBox get hSpace => SizedBox(
        width: ScreenUtil().setWidth(this),
      );
}

abstract class AppTheme {
  static final ThemeData theme = ThemeData(
    fontFamily: 'SfpRegular',
    scaffoldBackgroundColor: AppColors.primaryBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryBackgroundColor,
    ),
    textTheme: const TextTheme(),
  );
}

extension ThemeX on BuildContext {
  TextTheme get appTextTheme => Theme.of(this).textTheme;
}
