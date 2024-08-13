import 'package:json_annotation/json_annotation.dart';
import 'package:pixelcraft/core/models/response/image_response_model.dart';

part 'generate_response_model.g.dart';

@JsonSerializable()
class GenerateResponseModel {
  GenerateResponseModel({
    this.artifacts,
  });

  List<ImageResponseModel>? artifacts;






factory GenerateResponseModel.fromJson(Map<String, dynamic> json)=> _$GenerateResponseModelFromJson(json);

Map<String, dynamic> toJson() => _$GenerateResponseModelToJson(this);







}
