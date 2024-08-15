// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_prompts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextPromptsModel _$TextPromptsModelFromJson(Map<String, dynamic> json) =>
    TextPromptsModel(
      text: json['text'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TextPromptsModelToJson(TextPromptsModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'weight': instance.weight,
    };
