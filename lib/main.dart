import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/cubits/add_image/add_image_cubit.dart';
import 'package:pixelcraft/core/cubits/generate_image/generate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/cubits/remove_image/remove_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initalize();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.I<AddImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<RemoveImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<GetAllImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<GenerateImageCubit>()),


      ],
      child: MaterialApp.router(
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
      ),
    );

    //
  }
}
