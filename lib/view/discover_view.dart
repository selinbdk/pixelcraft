import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';
import 'package:pixelcraft/core/components/buttons/app_icon_button.dart';
import 'package:pixelcraft/core/components/dialog/loading_dialog.dart';
import 'package:pixelcraft/core/components/image/primary_image.dart';
import 'package:pixelcraft/core/components/snackbar/snack_bar_extension.dart';
import 'package:pixelcraft/core/cubits/add_image/add_image_cubit.dart';
import 'package:pixelcraft/core/cubits/generate_image/generate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/prompt_text_field.dart';

part 'widgets/dialog_field.dart';
part 'widgets/sliding_panel.dart';

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
          onPressed: appRouter.maybePop,
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
                enableDrag: false,
                clipBehavior: Clip.hardEdge,
                useSafeArea: true,
                context: context,
                builder: (context) => SizedBox(
                  height: 0.4.sh,
                  child: const _SlidingPanel(),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<GetAllImageCubit, GetAllImageState>(
        builder: (context, state) {
          if (state is! GetAllImageSuccess) {
            return const SizedBox.shrink();
          }

          return state.imageList.isEmpty
              ? Center(
                  child: Text(
                    'There are no images',
                    style: TextStyle(
                      color: ColorName.primaryLabel,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: state.imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: PrimaryImage.memory(base64String: state.imageList[index].base64),
                    );
                  },
                );
        },
      ),
    );
  }
}
