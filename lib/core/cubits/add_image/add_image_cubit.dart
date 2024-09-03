import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/core/models/response/image_response_model.dart';
import 'package:pixelcraft/core/repository/image_storage_repository.dart';

part 'add_image_state.dart';

class AddImageCubit extends Cubit<AddImageState> {
  AddImageCubit(this._imageStorageRepository) : super(const AddImageInitial());

  Future<void> addImage({required ImageResponseModel result, required String prompt}) async {
    emit(const AddImageLoading());

    try {
      final collection = result.toCollection(prompt: prompt);

      await _imageStorageRepository.saveResult(collection);

      emit(AddImageSuccess(collection));
    } catch (_) {
      emit(AddImageFailure(message: _.toString()));
    }
  }

  final ImageStorageRepository _imageStorageRepository;
}
