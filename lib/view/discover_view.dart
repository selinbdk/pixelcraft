import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/core/components/buttons/app_icon_button.dart';
import 'package:pixelcraft/core/components/dialog/loading_dialog.dart';
import 'package:pixelcraft/core/components/image/primary_image.dart';
import 'package:pixelcraft/core/components/snackbar/snack_bar_extension.dart';
import 'package:pixelcraft/core/cubits/book_marks/book_marks_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/cubits/remove_image/remove_image_cubit.dart';
import 'package:pixelcraft/gen/assets.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';

@RoutePage()
class DiscoverView extends StatelessWidget {
  const DiscoverView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: AppIconButton(
          icon: Assets.icons.settings.svg(),
          onPressed: () => showDialog<void>(
            context: context,
            builder: (context) => _DialogField(
              onPressed: () {},
            ),
          ),
          //context.replaceRoute(const OnboardingRoute()),
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
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                barrierColor: Colors.transparent,
                clipBehavior: Clip.hardEdge,
                useSafeArea: true,
                context: context,
                builder: (context) => SizedBox(
                  height: 0.75.sh,
                  child: const _SlidingPanel(),
                ),
              );
            },
          ),
        ],
      ),
      body: const Column(),
    );
  }
}
