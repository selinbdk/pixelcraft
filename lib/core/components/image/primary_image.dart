// named constructor
import 'dart:convert';


import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class PrimaryImage extends StatelessWidget {
  const PrimaryImage.asset({
    required this.imagePath,
    super.key,
  }) : base64String = null;

  const PrimaryImage.memory({
    required this.base64String,
    super.key,
  }) : imagePath = null;

  @override
  Widget build(BuildContext context) {
    if (base64String != null) {
      return ExtendedImage.memory(
        base64Decode(base64String ?? ''),
        width: 1024,
        height: 1024,
      );
    } else if (imagePath != null) {
      return ExtendedImage.asset(imagePath ?? '');
      //Image.asset(imagePath ?? '');
    }
    return const SizedBox.shrink();
  }

  final String? imagePath;

  final String? base64String;
}
