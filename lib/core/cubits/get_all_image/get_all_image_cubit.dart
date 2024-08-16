import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/core/repository/image_storage_repository.dart';

part 'get_all_image_state.dart';

class GetAllImageCubit extends Cubit<GetAllImageState> {
  GetAllImageCubit(this._imageStorageRepository) : super(const GetAllImageInitial());

  Future<void> getAllImage() async {
    emit(const GetAllImageLoading());
    try {
      final imageList = await _imageStorageRepository.getAllResults();
      emit(GetAllImageSuccess(imageList));
    } catch (_) {
      emit(GetAllImageFailure(message: _.toString()));
    }
  }

  final ImageStorageRepository _imageStorageRepository;
}
