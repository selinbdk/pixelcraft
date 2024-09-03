import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

part 'share_image_state.dart';

class ShareImageCubit extends Cubit<ShareImageState> {
  ShareImageCubit() : super(const ShareImageInitial());

  Future<void> shareImage(String? base64String) async {
    emit(const ShareImageLoading());

    try {
      final status = await Permission.photos.request();

      if (base64String == null) {
        return emit(const ShareImageFailure(message: 'base64 is null'));
      }

      if (status.isGranted) {
        final bytes = base64Decode(base64String);
        final directory = await getApplicationDocumentsDirectory();

        final imagePath = '${directory.path}/$hashCode.jpg';

        await File(imagePath).writeAsBytes(bytes);

        await Share.shareXFiles([XFile(imagePath)]);

        //openAppSettings()

        emit(const ShareImageSuccess());
      } else {
        emit(const SharePermissionDenied(message: 'Permission denied. Check your settings.'));
      }
    } catch (e) {
      emit(const ShareImageFailure(message: 'Something Went Wrong!'));
    }
  }
}
