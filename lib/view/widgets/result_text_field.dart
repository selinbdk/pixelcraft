import 'package:flutter/material.dart';
import 'package:pixelcraft/gen/colors.gen.dart';

class ResultTextField extends StatelessWidget {
  const ResultTextField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: ColorName.primaryLabel,
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
      readOnly: true,
      showCursor: false,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorName.secondaryBackground,
        contentPadding: const EdgeInsets.all(24),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: ColorName.resultBorder,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: ColorName.resultBorder,
          ),
        ),
      ),
    );
  }
}
