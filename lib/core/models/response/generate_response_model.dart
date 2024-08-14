import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pixelcraft/core/models/response/image_response_model.dart';

part 'generate_response_model.g.dart';

@Entity()
@JsonSerializable()
class GenerateResponseModel {
  GenerateResponseModel({
    this.id = 0,
  });

  @Id()
  int? id;
  final ToMany<ImageResponseModel> artifacts = ToMany<ImageResponseModel>();

  factory GenerateResponseModel.fromJson(Map<String, dynamic> json) => _$GenerateResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateResponseModelToJson(this);
}
