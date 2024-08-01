import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/theme/app_theme.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Assets.icons.settingsIcon.svg(),
              70.hSpace,
              Text(
                AppLocalizations.of(context).discoverTitleMessage,
                style: context.appTextTheme.displayMedium?.copyWith(
                  color: AppColors.primaryLabel,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              70.hSpace,
              Assets.icons.addIcon.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
