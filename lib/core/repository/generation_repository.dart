import 'package:pixelcraft/core/constants/api_constants.dart';
import 'package:pixelcraft/core/models/request/generate_request_model.dart';
import 'package:pixelcraft/core/models/response/generate_response_model.dart';
import 'package:pixelcraft/core/models/response/image_response_model.dart';
import 'package:pixelcraft/core/network/dio_client.dart';

abstract class GenerationRepository {
  Future<ImageResponseModel?> generateTextToImage(String prompt);
}

class GenerationRepositoryImpl implements GenerationRepository {
  const GenerationRepositoryImpl(this._dioClient);

  @override
  Future<ImageResponseModel?> generateTextToImage(String prompt) async {
    try {
      final requestModel = GenerateRequestModel.defaultModel(prompt: prompt);

      final response = await _dioClient.post(
        ApiConstants.generateImagePath,
        data: requestModel.toJson(),
      );
      final data = response.data;
      final generateResponseModel = GenerateResponseModel.fromJson(data as Map<String, dynamic>);
      return generateResponseModel.artifacts?.first;
    } catch (e) {
      rethrow;
    }
  }

  final DioClient _dioClient;
}
