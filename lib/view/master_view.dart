import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';
import 'package:pixelcraft/core/components/buttons/app_icon_button.dart';
import 'package:pixelcraft/core/components/dialog/loading_dialog.dart';
import 'package:pixelcraft/core/components/snackbar/snack_bar_extension.dart';
import 'package:pixelcraft/core/cubits/add_image/add_image_cubit.dart';
import 'package:pixelcraft/core/cubits/current_flag/current_flag_cubit.dart';
import 'package:pixelcraft/core/cubits/generate_image/generate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/cubits/locale/locale_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/app_navigation_bar.dart';
import 'package:pixelcraft/view/widgets/prompt_text_field.dart';

part 'widgets/dialog_field.dart';
part 'widgets/master_app_bar.dart';
part 'widgets/sliding_panel.dart';

@RoutePage()
class MasterView extends StatelessWidget {
  MasterView({super.key});
  final List<String> languageCodes = [
    'en',
    'es',
    'ja',
    'pt',
    'tr',
  ];

  final List<SvgPicture> flags = [
    Assets.icons.flagTurkey.svg(),
    Assets.icons.flagUnitedKingdom.svg(),
    Assets.icons.flagSpain.svg(),
    Assets.icons.flagJapan.svg(),
    Assets.icons.flagPortugal.svg(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DiscoverRoute(),
        BookmarksRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          appBar: _MasterAppBar(
            tabsRouter.activeIndex == 0
                ? AppLocalizations.of(context).discoverTitleMessage
                : AppLocalizations.of(context).destinationBookMarks,
            languageCodes,
            flags,
          ),
          bottomNavigationBar: AppNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
