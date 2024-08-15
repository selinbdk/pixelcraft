// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateResponseModel _$GenerateResponseModelFromJson(
        Map<String, dynamic> json) =>
    GenerateResponseModel(
      artifacts: (json['artifacts'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ImageResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenerateResponseModelToJson(
        GenerateResponseModel instance) =>
    <String, dynamic>{
      'artifacts': instance.artifacts,
    };
