import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pixelcraft/core/models/response/image_response_model.dart';
import 'package:pixelcraft/core/repository/generation_repository.dart';

part 'regenerate_image_state.dart';

class RegenerateImageCubit extends Cubit<RegenerateImageState> {
  RegenerateImageCubit(this._generationRepository) : super(const RegenerateImageInitial());

  Future<void> regenerateImage({
    required String prompt,
  }) async {
    emit(const RegenerateImageLoading());
    try {
      final data = await _generationRepository.generateTextToImage(prompt);
      if (data != null) {
        emit(RegenerateImageSuccess(data));
      }
    } catch (_) {
      emit(RegenerateImageFailure(message: _.toString()));
    }
  }

  final GenerationRepository _generationRepository;
}
