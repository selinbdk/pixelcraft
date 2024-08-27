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
import 'package:pixelcraft/core/cubits/remove_image/remove_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/bookmarks_view.dart';
import 'package:pixelcraft/view/widgets/app_navigation_bar.dart';
import 'package:pixelcraft/view/widgets/permission_alert.dart';
import 'package:pixelcraft/view/widgets/prompt_text_field.dart';

part 'widgets/dialog_field.dart';
part 'widgets/discover_app_bar.dart';
part 'widgets/sliding_panel.dart';

@RoutePage()
class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Appbar
      appBar: const _DiscoverAppBar(),

      //* Body
      body: MultiBlocListener(
        listeners: [
          BlocListener<GetAllImageCubit, GetAllImageState>(
            listener: (context, getAllImageState) async {
              if (getAllImageState is GetAllImageLoading) {
                await showDialog(
                  context: context,
                  builder: (context) => const LoadingDialog(),
                  barrierDismissible: false,
                );
              } else if (getAllImageState is GetAllImageSuccess) {
                context.router.popUntilRoot();
              } else if (getAllImageState is GetAllImageFailure) {
                context.router.popUntilRoot();
                context.showErrorMessage(message: AppLocalizations.of(context).errorSnackbarMessage);
              }
            },
          ),
          BlocListener<RemoveImageCubit, RemoveImageState>(
            listener: (context, state) async {
              if (state is RemoveImageLoading) {
                await showDialog(
                  context: context,
                  builder: (context) => const LoadingDialog(),
                  barrierDismissible: false,
                );
              } else if (state is RemoveImageSuccess) {
                context.router.popUntilRoot();
                await context.read<GetAllImageCubit>().getAllImage();
              } else if (state is RemoveImageFailure) {
                context.router.popUntilRoot();
                context.showErrorMessage(message: AppLocalizations.of(context).errorSnackbarMessage);
              }
            },
          ),
        ],
        child: BlocBuilder<GetAllImageCubit, GetAllImageState>(
          builder: (context, state) {
            if (state is! GetAllImageSuccess) {
              return const SizedBox.shrink();
            }

            if (state.imageList.isEmpty) {
              return Center(
                child: Text(
                  AppLocalizations.of(context).emptyDiscoverMessage,
                  style: TextStyle(
                    color: ColorName.primaryLabel,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              );
            }

            return Column(
              children: [
                Flexible(
                  flex: 7,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: state.imageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.pushRoute(ResultRoute(collection: state.imageList[index]));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Hero(
                                  tag: Key(state.imageList[index].id.toString()),
                                  child: PrimaryImage.memory(
                                    base64String: state.imageList[index].base64,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppIconButton(
                                onPressed: () {},
                                icon: Assets.icons.bookmark.svg(),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              AppIconButton(
                                onPressed: () async =>
                                    context.read<RemoveImageCubit>().deleteImage(state.imageList[index].id),
                                icon: Assets.icons.close.svg(),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Expanded(
                  child: AppNavigationBar(
                    onTap: (index) {},
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
