import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';
import 'package:pixelcraft/core/components/buttons/app_icon_button.dart';
import 'package:pixelcraft/core/components/image/primary_image.dart';
import 'package:pixelcraft/core/components/snackbar/snack_bar_extension.dart';
import 'package:pixelcraft/core/cubits/generate_image/generate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/prompt_text_field.dart';

@RoutePage()
class ResultView extends StatelessWidget {
  const ResultView({
    required this.base64String,
    required this.controller,
    super.key,
  });

  final TextEditingController controller;
  final String base64String;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateImageCubit, GenerateImageState>(
      builder: (context, state) {
        if (state is! GenerateImageSuccess) {
          return const SizedBox.shrink();
        }

        //* Success State
        context.read<GetAllImageCubit>().getAllImage();
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: AppIconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: ColorName.secondaryLabel.withOpacity(0.60),
                size: 26.sp,
              ),
              onPressed: () => Navigator.pop(context),
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
                child: PrimaryImage.memory(base64String: base64String,),
              ),
              Padding(
                padding: AppPadding.pagePadding,
                child: PromptTextField(
                  controller: controller,
                  maxLines: 2,
                  minLines: 1,
                  readOnly: true,
                  textAlign: TextAlign.center,
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
                        onPressed: () {
                          context.showSuccessMessage(message: 'Image Successfully Downloaded!');
                        },
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
      },
    );
  }
}
