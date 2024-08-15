// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateRequestModel _$GenerateRequestModelFromJson(Map<String, dynamic> json) => GenerateRequestModel(
      cfgScale: (json['cfg_scale'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      sampler: json['sampler'] as String?,
      samples: (json['samples'] as num?)?.toInt(),
      steps: (json['steps'] as num?)?.toInt(),
      textPrompts: (json['text_prompts'] as List<dynamic>?)
          ?.map((e) => TextPromptsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenerateRequestModelToJson(GenerateRequestModel instance) => <String, dynamic>{
      'cfg_scale': instance.cfgScale,
      'height': instance.height,
      'width': instance.width,
      'sampler': instance.sampler,
      'samples': instance.samples,
      'steps': instance.steps,
      'text_prompts': instance.textPrompts,
    };
