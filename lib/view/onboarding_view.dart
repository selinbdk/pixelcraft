import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/core/components/app_button.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/theme/app_theme.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Assets.images.onboardingImage.image(),

          //* General huge container
          Padding(
            padding: AppPadding.pagePadding,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //* Messages container
                  Text(
                    AppLocalizations.of(context).onboardingTitleMessage,
                    textAlign: TextAlign.center,
                    style: context.appTextTheme.displayMedium?.copyWith(
                      color: ColorName.primaryLabel,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.sp,
                    ),
                  ),

                  //* Space between messages
                  16.verticalSpace,

                  //* Secondary message
                  Text(
                    AppLocalizations.of(context).onboardingContentMessage,
                    textAlign: TextAlign.center,
                    style: context.appTextTheme.bodyMedium?.copyWith(
                      color: ColorName.secondaryLabel,
                      fontSize: 15.sp,
                    ),
                  ),

                  //* Space between message container and button
                  75.verticalSpace,

                  //* Button
                  AppButton(
                    backgroundColor: ColorName.primaryBlue,
                    foregroundColor: ColorName.primaryLabel,
                    messages: context.l10n.letsGoButtonTitle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
