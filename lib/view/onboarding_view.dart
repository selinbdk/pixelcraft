import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/assets.gen.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/config/router/app_router.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';
import 'package:pixelcraft/core/components/dialog/loading_dialog.dart';
import 'package:pixelcraft/core/components/snackbar/snack_bar_extension.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/l10n/l10.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllImageCubit, GetAllImageState>(
      listener: (context, state) {
        if (state is GetAllImageLoading) {
          showDialog(
            context: context,
            builder: (context) => const LoadingDialog(),
            barrierDismissible: false,
          );
        } else if (state is GetAllImageFailure) {
          context.showErrorMessage(message: AppLocalizations.of(context).errorSnackbarMessage);
        } else if (state is GetAllImageSuccess) {
          context.replaceRoute(const DiscoverRoute());
        }
      },
      builder: (context, state) {
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
                          //10.dm,
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
                        onPressed: () async => context.read<GetAllImageCubit>().getAllImage(),
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
      },
    );
  }
}
