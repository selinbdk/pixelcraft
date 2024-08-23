import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/core/components/buttons/app_button.dart';

class PermissionAlert extends StatelessWidget {
  const PermissionAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorName.secondaryBackground,
      title: const Text(
        'Permission Denied!',
        style: TextStyle(
          color: ColorName.primaryLabel,
        ),
      ),
      content: const Text(
        'Please check your settings',
        style: TextStyle(
          color: ColorName.primaryLabel,
        ),
      ),
      actions: [
        AppButton(
          onPressed: () => Navigator.pop(context),
          messages: 'Cancel',
          backgroundColor: ColorName.secondaryBackground,
          foregroundColor: ColorName.primaryLabel,
        ),
        const AppButton(
          onPressed: openAppSettings,
          messages: 'Check',
          backgroundColor: ColorName.secondaryBackground,
          foregroundColor: ColorName.primaryLabel,
        ),
      ],
    );
  }
}
