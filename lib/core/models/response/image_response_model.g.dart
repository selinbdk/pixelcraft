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
      id: (json['id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ImageResponseModelToJson(ImageResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'base64': instance.base64,
      'finishReason': instance.finishReason,
      'seed': instance.seed,
    };
