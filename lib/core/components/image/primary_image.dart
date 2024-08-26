// named constructor
import 'package:cached_memory_image/cached_memory_image.dart';
import 'package:flutter/material.dart';

class PrimaryImage extends StatelessWidget {
  const PrimaryImage.asset({
    required this.imagePath,
    super.key,
  })  : base64String = null,
        uniqueKey = null;

  const PrimaryImage.memory({
    required this.uniqueKey,
    required this.base64String,
    super.key,
  }) : imagePath = null;

  @override
  Widget build(BuildContext context) {
    if (base64String != null && uniqueKey != null) {
      return CachedMemoryImage(
        uniqueKey: uniqueKey!,
        base64: base64String,
        width: 1024,
        height: 1024,
        cacheHeight: 1024,
        cacheWidth: 1024,
      );
    } else if (imagePath != null) {
      return Image.asset(imagePath ?? '');
    }
    return const SizedBox.shrink();
  }

  final String? imagePath;
  final String? uniqueKey;
  final String? base64String;
}
