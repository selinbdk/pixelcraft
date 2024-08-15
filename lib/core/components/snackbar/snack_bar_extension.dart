import 'package:flutter/material.dart';
import 'package:pixelcraft/gen/colors.gen.dart';

extension SnackBarManager on BuildContext {
  
  void showSuccessMessage({required String message}){
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: ColorName.primaryBackground,
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
        style: const TextStyle(
          color: ColorName.primaryLabel,
        ),
      ),
      backgroundColor: ColorName.errorSnackBar,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
