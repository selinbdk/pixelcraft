import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/gen/colors.gen.dart';
import 'package:pixelcraft/l10n/l10.dart';

class PromptTextField extends StatelessWidget {
  const PromptTextField({
    required this.controller,
    this.onChanged,
    this.maxLines,
    this.minLines,
    this.readOnly = false,
    this.textAlign = TextAlign.start,
    super.key,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;

  final int? minLines;
  final int? maxLines;
  final bool readOnly;

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      style: const TextStyle(
        color: ColorName.secondaryLabel,
      ),
      cursorColor: ColorName.secondaryLabel,
      minLines: minLines,
      maxLines: maxLines,
      textAlign: textAlign,
      readOnly: readOnly,
      decoration: InputDecoration(
        fillColor: ColorName.primaryBackground,
        contentPadding: const EdgeInsets.all(24),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.promptBorder.withOpacity(0.36),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
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
