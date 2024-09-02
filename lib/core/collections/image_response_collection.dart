import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'image_response_collection.g.dart';

@collection
class ImageResponseCollection extends Equatable {
  const ImageResponseCollection({
    required this.id,
    this.base64,
    this.finishReason,
    this.seed,
    this.prompt,
    this.createdAt,
  });

  factory ImageResponseCollection.fromJson(Map<String, dynamic> json) {
    return ImageResponseCollection(
      id: json['id'] as int,
      base64: json['base64'] as String?,
      finishReason: json['finishReason'] as String?,
      prompt: json['prompt'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      seed: json['seed'] as int?,
    );
  }

  @Id()
  final int id;
  final String? base64;
  final String? finishReason;
  final String? prompt;
  final DateTime? createdAt;
  final int? seed;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'base64': base64,
      'finishReason': finishReason,
      'prompt': prompt,
      'createdAt': createdAt?.toString(),
      'seed': seed,
    };
  }

  @override
  List<Object?> get props => [
        id,
        base64,
        prompt,
        createdAt,
        seed,
      ];
}
