import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: ColorName.secondaryLabel,
      ),
      cursorColor: ColorName.secondaryLabel,
      minLines: 10,
      maxLines: 20,
      decoration: InputDecoration(
        fillColor: ColorName.primaryBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: AppLocalizations.of(context).promptContentMessage,
        hintStyle: TextStyle(
          color: ColorName.secondaryLabel,
          fontSize: 15.sp,
        ),
      ),
    );
  }
}
