import 'package:json_annotation/json_annotation.dart';


part 'image_response_model.g.dart';

@JsonSerializable()
class ImageResponseModel {
  ImageResponseModel({
    this.base64,
    this.finishReason,
    this.seed,
  });

  String? base64;
  String? finishReason;
  int? seed;




factory ImageResponseModel.fromJson(Map<String, dynamic> json)=> _$ImageResponseModelFromJson(json);

Map<String, dynamic> toJson() => _$ImageResponseModelToJson(this);






}
