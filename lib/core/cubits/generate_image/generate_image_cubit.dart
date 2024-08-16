import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pixelcraft/core/models/response/generate_response_model.dart';
import 'package:pixelcraft/core/repository/generation_repository.dart';

part 'generate_image_state.dart';

class GenerateImageCubit extends Cubit<GenerateImageState> {
  GenerateImageCubit(
    this._generationRepository,
  ) : super(const GenerateImageInitial());

  Future<void> fetchData({
    required String prompt,
  }) async {
    emit(const GenerateImageLoading());
    try {
      final data = await _generationRepository.detectData(prompt);
      emit(GenerateImageSuccess(data));
    } catch (_) {
      emit(GenerateImageFailure(message: _.toString()));
    }
  }

  GenerationRepository _generationRepository;
}
