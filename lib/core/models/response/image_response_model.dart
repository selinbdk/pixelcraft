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

  ImageResponseCollection toCollection() {
    return ImageResponseCollection(
      base64: base64,
      finishReason: finishReason,
      seed: seed,
    );
  }

  String? base64;
  String? finishReason;
  int? seed;
}
