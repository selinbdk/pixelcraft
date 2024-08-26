import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:pixelcraft/core/repository/image_storage_repository.dart';

part 'remove_image_state.dart';

class RemoveImageCubit extends Cubit<RemoveImageState> {
  RemoveImageCubit(
    this._imageStorageRepository,
  ) : super(const RemoveImageInitial());

  Future<void> deleteImage(Id id) async {
    emit(const RemoveImageLoading());
    try {
      await _imageStorageRepository.deleteResult(id);
      emit(RemoveImageSuccess(id));
    } catch (e) {
      emit(RemoveImageFailure(message: e.toString()));
    }
  }

  final ImageStorageRepository _imageStorageRepository;
}
