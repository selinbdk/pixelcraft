import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/core/components/app_icons.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/theme/app_theme.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: AppIcons(icon:Assets.icons.settings.svg(),
        ),
        title: Text(
          AppLocalizations.of(context).discoverTitleMessage,
          style: context.appTextTheme.displayMedium?.copyWith(
            color: AppColors.primaryLabel,
            fontWeight: FontWeight.bold,
            fontSize: 17.sp,
          ),
        ),
        actions: [
          AppIcons(
            icon: Assets.icons.add.svg(),
          ),
        ],
      ),
    );
  }
}
