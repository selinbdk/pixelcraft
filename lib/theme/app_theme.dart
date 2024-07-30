import 'package:flutter/material.dart';

class AppColors {
  static const Color buttonColor = Color(0xFF0A84FF);
  static const Color primaryLabel = Color(0xFFFFFFFF);
  static const Color secondaryLabel = Color(0xFFEBEBF5);
  static const Color backgroundColor = Color(0xFF000000);
}

class AppPadding {
  static const EdgeInsets onboardingPadding = EdgeInsets.all(0);
  static const EdgeInsets onboardingMargin = EdgeInsets.only(bottom: 33);
}

class AppSpacing {
  static const SizedBox onboardingMessagesSpace = SizedBox(height: 16);
  static const SizedBox onboardingButtonSpace = SizedBox(height: 64);
}

abstract class AppTheme {
  static final ThemeData theme = ThemeData(fontFamily: 'SfpBold', textTheme: const TextTheme(bodyLarge: TextStyle()));
}

extension ThemeX on BuildContext {
  TextTheme get appTextTheme => Theme.of(this).textTheme;
}
