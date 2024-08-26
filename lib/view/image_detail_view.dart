import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';
import 'package:pixelcraft/core/components/buttons/app_icon_button.dart';
import 'package:pixelcraft/core/components/dialog/loading_dialog.dart';
import 'package:pixelcraft/core/components/image/primary_image.dart';
import 'package:pixelcraft/core/components/snackbar/snack_bar_extension.dart';
import 'package:pixelcraft/core/cubits/download_image/download_image_cubit.dart';
import 'package:pixelcraft/core/cubits/share_image/share_image_cubit.dart';
import 'package:pixelcraft/core/theme/app_theme.dart';
import 'package:pixelcraft/l10n/l10.dart';
import 'package:pixelcraft/view/widgets/permission_alert.dart';

@RoutePage()
class ImageDetailView extends StatelessWidget {
  const ImageDetailView({
    required this.idNum,
    required this.base64String,
    super.key,
  });

  final String? base64String;
  final int? idNum;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShareImageCubit, ShareImageState>(
      listener: (context, state) {
        if (state is ShareImageLoading) {
          showDialog(
            context: context,
            builder: (context) => const LoadingDialog(),
            barrierDismissible: false,
          );
        } else if (state is ShareImageFailure) {
          context
            ..maybePop()
            ..showErrorMessage(message: 'Something Went Wrong!');
        } else if (state is ShareImageSuccess) {
          context.maybePop();
        } else if (state is SharePermissionDenied) {
          showDialog(
            context: context,
            builder: (context) => const PermissionAlert(),
            barrierDismissible: false,
          );
        }
      },
      child: BlocListener<DownloadImageCubit, DownloadImageState>(
        listener: (context, state) {
          if (state is DownloadImageLoading) {
            showDialog(
              context: context,
              builder: (context) => const LoadingDialog(),
              barrierDismissible: false,
            );
          } else if (state is DownloadImageFailure) {
            context
              ..maybePop()
              ..showErrorMessage(message: 'Something Went Wrong!');
          } else if (state is DownloadImageSuccess) {
            context
              ..maybePop()
              ..showSuccessMessage(message: 'Image Successfully Downloaded!');
          }
        },
        child: Scaffold(
          body: Column(
            children: [
              const Spacer(flex: 3),
              Row(
                children: [
                  AppIconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: ColorName.primaryLabel,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: '$idNum',
                  child: PrimaryImage.memory(
                    base64String: base64String,
                  ),
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              Padding(
                padding: AppPadding.pagePadding,
                child: Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        onPressed: () => context.read<DownloadImageCubit>().downloadImage(base64String),
                        messages: AppLocalizations.of(context).downloadButtonTitle,
                        backgroundColor: ColorName.primaryBlue,
                        foregroundColor: ColorName.primaryLabel,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: AppButton(
                        onPressed: () => context.read<ShareImageCubit>().shareImage(base64String),
                        messages: 'Share',
                        icon: const Icon(Icons.share),
                        backgroundColor: ColorName.primaryBlue,
                        foregroundColor: ColorName.primaryLabel,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 5),
            ],
          ),
        ),
      ),
    );
  }
}
