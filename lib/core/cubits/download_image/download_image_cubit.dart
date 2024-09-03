import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

part 'download_image_state.dart';

class DownloadImageCubit extends Cubit<DownloadImageState> {
  DownloadImageCubit() : super(const DownloadImageInitial());

  Future<void> downloadImage(String? base64String) async {
    emit(const DownloadImageLoading());

    if (base64String == null) {
      return emit(const DownloadImageFailure(message: 'base64String is null'));
    }

    try {
      final status = await Permission.photos.request();
      if (status.isGranted) {
        await ImageGallerySaver.saveImage(base64Decode(base64String));
        emit(const DownloadImageSuccess());
      }
    } catch (e) {
      emit(const DownloadImageFailure(message: 'Something Went Wrong!'));
    }
  }
}
