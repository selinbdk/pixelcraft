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

  factory GenerateRequestModel.fromJson(Map<String, dynamic> json) => _$GenerateRequestModelFromJson(json);

  factory GenerateRequestModel.defaultModel({
    required String prompt,
  }) =>
      GenerateRequestModel(
        cfgScale: 7,
        width: 1024,
        height: 1024,
        samples: 1,
        steps: 30,
        textPrompts: [
          TextPromptsModel(
            text: prompt,
            weight: 10,
          ),
          TextPromptsModel(
            text: '''
                  Usual Negative Prompt for me
                  lowres, text, error,
                  cropped, worst quality,
                  low quality, jpeg artifacts,
                  ugly, duplicate,
                  orbid, mutilated, out of frame,
                  extra fingers, mutated hands,
                  poorly drawn hands, poorly drawn face, 
                  mutation, deformed, blurry, dehydrated, 
                  bad anatomy, bad proportions, extra limbs, 
                  cloned face,
                  ''',
            weight: -10,
          ),
        ],
      );

  Map<String, dynamic> toJson() => _$GenerateRequestModelToJson(this);

  @JsonKey(name: 'cfg_scale')
  int? cfgScale;
  int? height;
  int? width;
  String? sampler;
  int? samples;
  int? steps;
  @JsonKey(name: 'text_prompts')
  List<TextPromptsModel>? textPrompts;
}
