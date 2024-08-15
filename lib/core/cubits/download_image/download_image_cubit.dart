import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'download_image_state.dart';

class DownloadImageCubit extends Cubit<DownloadImageState> {
  DownloadImageCubit() : super(const DownloadImageInitial());
}
