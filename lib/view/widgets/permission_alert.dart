import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';
import 'package:pixelcraft/l10n/l10.dart';

class PermissionAlert extends StatelessWidget {
  const PermissionAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorName.secondaryBackground,
      title: Text(
        AppLocalizations.of(context).alertDialogTitle,
        style: const TextStyle(
          color: ColorName.primaryLabel,
        ),
      ),
      content: Text(
        AppLocalizations.of(context).alertDialogContent,
        style: const TextStyle(
          color: ColorName.primaryLabel,
        ),
      ),
      actions: [
        AppButton(
          onPressed: openAppSettings,
          messages: AppLocalizations.of(context).alertDialogCheck,
          backgroundColor: ColorName.secondaryBackground,
          foregroundColor: ColorName.primaryLabel,
        ),
        AppButton(
          onPressed: () => Navigator.pop(context),
          messages: AppLocalizations.of(context).alertDialogCancel,
          backgroundColor: ColorName.secondaryBackground,
          foregroundColor: ColorName.primaryLabel,
        ),
      ],
    );
  }
}
