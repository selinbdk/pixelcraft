import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/cubits/add_image/add_image_cubit.dart';
import 'package:pixelcraft/core/cubits/book_marks/book_marks_cubit.dart';
import 'package:pixelcraft/core/cubits/current_flag/current_flag_cubit.dart';
import 'package:pixelcraft/core/cubits/download_image/download_image_cubit.dart';
import 'package:pixelcraft/core/cubits/generate_image/generate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/cubits/locale/locale_cubit.dart';
import 'package:pixelcraft/core/cubits/regenerate_image/regenerate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/remove_image/remove_image_cubit.dart';
import 'package:pixelcraft/core/cubits/share_image/share_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getApplicationDocumentsDirectory(),
  );

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
        BlocProvider(create: (context) => GetIt.I<DownloadImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<ShareImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<GenerateImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<RegenerateImageCubit>()),
        BlocProvider(create: (context) => GetIt.I<BookMarksCubit>()),
        BlocProvider(create: (context) => GetIt.I<LocaleCubit>()),
        BlocProvider(create: (context) => GetIt.I<CurrentFlagCubit>()),
      ],
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, currentLanguage) {
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
            locale: currentLanguage,

            ///
            ///* Theme
            theme: AppTheme.theme,

            ///
            ///* Route Config
            routerConfig: appRouter.config(),
          );
        },
      ),
    );

    //
  }
}
