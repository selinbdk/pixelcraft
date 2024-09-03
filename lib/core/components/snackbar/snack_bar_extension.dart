import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/gen/colors.gen.dart';

extension SnackBarManager on BuildContext {
  void showSuccessMessage({required String message}) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: ColorName.primaryLabel,
          fontSize: 16.sp,
        ),
      ),
      backgroundColor: ColorName.successSnackBar,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void showErrorMessage({
    required String message,
  }) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style:  TextStyle(
          color: ColorName.primaryLabel,
          fontSize: 16.sp,
        ),
      ),
      backgroundColor: ColorName.errorSnackBar,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
