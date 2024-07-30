import 'package:flutter/material.dart';
import 'package:pixelcraft/theme/app_theme.dart';
import 'package:pixelcraft/view/onboarding_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.theme,
      home: const OnboardingView(),
    );
  }
}
