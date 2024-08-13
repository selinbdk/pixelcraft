import 'package:json_annotation/json_annotation.dart';
import 'package:pixelcraft/core/models/request/text_prompts_model.dart';

part 'generate_request_model.g.dart';


@JsonSerializable()
class GenerateRequestModel {
  GenerateRequestModel({
    this.cfgScale,
    this.height,
    this.width,
    this.sampler,
    this.samples,
    this.steps,
    this.textPrompts,
    
  });
  @JsonKey(name: 'cfg_scale')
  int? cfgScale;
  int? height;
  int? width;
  String? sampler;
  int? samples;
  int? steps;
  @JsonKey(name: 'text_prompts')
  List<TextPromptsModel>? textPrompts;


factory GenerateRequestModel.fromJson(Map<String, dynamic> json)=> _$GenerateRequestModelFromJson(json);

Map<String, dynamic> toJson() => _$GenerateRequestModelToJson(this);



}
