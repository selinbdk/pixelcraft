import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/components/app_button.dart';
import 'package:pixelcraft/core/components/app_icon_button.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/text_box_widget.dart';

part 'widgets/bottom_sheet.dart';
// https://picsum.photos/500/500/
@RoutePage()
class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: AppIconButton(
          icon: Assets.icons.settings.svg(),
          onPressed: () => context.replaceRoute(const OnboardingRoute()),
        ),
        title: Text(
          AppLocalizations.of(context).discoverTitleMessage,
          style: context.appTextTheme.displayMedium?.copyWith(
            color: ColorName.primaryLabel,
            fontWeight: FontWeight.bold,
            fontSize: 17.sp,
          ),
        ),
        actions: [
          AppIconButton(
            icon: Assets.icons.add.svg(),
            onPressed: () async {
              await showModalBottomSheet<void>(
                context: context,
                builder: (context) => const _BottomSheet(),
              );
            },
          ),
        ],
      ),
    );
  }
}
