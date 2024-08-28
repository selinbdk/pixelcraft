import 'package:isar/isar.dart';

part 'image_response_collection.g.dart';

@collection
class ImageResponseCollection {
  const ImageResponseCollection({
    required this.id,
    this.base64,
    this.finishReason,
    this.seed,
    this.prompt,
    this.createdAt,
  });

  @Id()
  final int id;
  final String? base64;
  final String? finishReason;
  final String? prompt;
  final DateTime? createdAt;
  final int? seed;
}


