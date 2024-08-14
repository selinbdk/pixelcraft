import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/components/app_button.dart';
import 'package:pixelcraft/core/components/app_icon_button.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/result_text_field.dart';

@RoutePage()
class ResultView extends StatelessWidget {
  const ResultView({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: AppIconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: ColorName.secondaryLabel.withOpacity(0.60),
            size: 26.sp,
          ),
          onPressed: () => context.pushRoute(const DiscoverRoute()),
        ),
        title: Text(
          AppLocalizations.of(context).resultTitle,
          style: context.appTextTheme.displayMedium?.copyWith(
            color: ColorName.primaryLabel,
            fontWeight: FontWeight.bold,
            fontSize: 17.sp,
          ),
        ),
        actions: [
          AppIconButton(
            icon: Assets.icons.share.svg(),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: AppPadding.pagePadding,
            child: ResultTextField(controller: controller),
          ),
          Padding(
            padding: AppPadding.pagePadding,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              height: 512,
              width: 512,
            ),
          ),
          Padding(
            padding: AppPadding.pagePadding,
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    onPressed: () {},
                    messages: AppLocalizations.of(context).regenerateButtonTitle,
                    backgroundColor: ColorName.secondaryBackground,
                    foregroundColor: ColorName.primaryBlue,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AppButton(
                    onPressed: () {},
                    messages: AppLocalizations.of(context).downloadButtonTitle,
                    backgroundColor: ColorName.primaryBlue,
                    foregroundColor: ColorName.primaryLabel,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
