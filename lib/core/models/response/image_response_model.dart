import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';

part 'image_response_model.g.dart';

@JsonSerializable()
class ImageResponseModel {
  ImageResponseModel({
    this.base64,
    this.finishReason,
    this.seed,
  });

  factory ImageResponseModel.fromJson(Map<String, dynamic> json) => _$ImageResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResponseModelToJson(this);

  ImageResponseCollection toCollection({required String prompt}) {
    return ImageResponseCollection(
      id: Isar.get(schemas: [ImageResponseCollectionSchema]).imageResponseCollections.autoIncrement(),
      base64: base64,
      finishReason: finishReason,
      seed: seed,
      prompt: prompt,
      createdAt: DateTime.now(),
    );
  }

  String? base64;
  String? finishReason;
  int? seed;
}
