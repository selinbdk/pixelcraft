import 'package:json_annotation/json_annotation.dart';

part 'generate_response_model.g.dart';

@JsonSerializable()
class GenerateResponseModel {
  GenerateResponseModel({
    this.id = 0,
  });

  factory GenerateResponseModel.fromJson(Map<String, dynamic> json) => _$GenerateResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateResponseModelToJson(this);

  int? id;
}
