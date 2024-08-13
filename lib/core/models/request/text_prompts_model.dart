import 'package:json_annotation/json_annotation.dart';

part 'text_prompts_model.g.dart';

@JsonSerializable()
class TextPromptsModel {
  TextPromptsModel({this.text, this.weight});
  String? text;
  int? weight;



factory TextPromptsModel.fromJson(Map<String, dynamic> json)=> _$TextPromptsModelFromJson(json);

Map<String, dynamic> toJson() => _$TextPromptsModelToJson(this);








}
