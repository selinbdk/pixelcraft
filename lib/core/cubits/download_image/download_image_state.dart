part of 'download_image_cubit.dart';

sealed class DownloadImageState extends Equatable {
  const DownloadImageState();

  @override
  List<Object> get props => [];
}

final class DownloadImageInitial extends DownloadImageState {
  const DownloadImageInitial();

  @override
  List<Object> get props => [];
}

final class DownloadImageLoading extends DownloadImageState {
  const DownloadImageLoading();

  @override
  List<Object> get props => [];
}

final class DownloadImageSuccess extends DownloadImageState {
  const DownloadImageSuccess();

  @override
  List<Object> get props => [];
}

final class DownloadImageFailure extends DownloadImageState {
  const DownloadImageFailure({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}
