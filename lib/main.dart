import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      builder: (context, child) {
        return MediaQuery.withClampedTextScaling(
          maxScaleFactor: 1,
          child: child!,
        );
      },

      ///
      ///* Localization Config
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      ///
      ///* Theme
      theme: AppTheme.theme,

      ///
      ///* Route Config
      routerConfig: appRouter.config(),
    );
  }
}
