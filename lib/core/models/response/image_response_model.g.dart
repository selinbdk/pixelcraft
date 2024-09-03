// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResponseModel _$ImageResponseModelFromJson(Map<String, dynamic> json) =>
    ImageResponseModel(
      base64: json['base64'] as String?,
      finishReason: json['finishReason'] as String?,
      seed: (json['seed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImageResponseModelToJson(ImageResponseModel instance) =>
    <String, dynamic>{
      'base64': instance.base64,
      'finishReason': instance.finishReason,
      'seed': instance.seed,
    };
