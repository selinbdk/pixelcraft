import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';

class PromptField extends StatelessWidget {
  const PromptField({super.key});

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
        contentPadding: const EdgeInsets.all(24),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: ColorName.promptBorder.withOpacity(0.36),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: ColorName.promptBorder.withOpacity(0.36),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        hintText: AppLocalizations.of(context).promptContentMessage,
        hintStyle: TextStyle(
          color: ColorName.secondaryLabel.withOpacity(0.6),
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
