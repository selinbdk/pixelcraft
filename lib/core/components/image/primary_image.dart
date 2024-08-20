// named constructor
import 'dart:convert';

import 'package:flutter/material.dart';

class PrimaryImage extends StatelessWidget {
  const PrimaryImage.asset({
    this.imagePath,
    super.key,
  }) : base64String = null;

  const PrimaryImage.memory({
    this.base64String,
    super.key,
  }) : imagePath = null;

  @override
  Widget build(BuildContext context) {
    if (base64String != null) {
      return Image.memory(base64Decode(base64String ?? ''));
    } else if (imagePath != null) {
      return Image.asset(imagePath ?? '');
    }
    return const SizedBox.shrink();
  }

  final String? imagePath;
  final String? base64String;
}
