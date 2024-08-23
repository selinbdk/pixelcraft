import 'package:isar/isar.dart';

part 'image_response_collection.g.dart';

@collection
class ImageResponseCollection {
  const ImageResponseCollection({
    this.base64,
    this.finishReason,
    this.seed,
    this.prompt,
    this.createdAt,
    this.id = Isar.autoIncrement,
  });

  final Id? id;
  final String? base64;
  final String? finishReason;
  final String? prompt;
  final DateTime? createdAt;
  final int? seed;
}
