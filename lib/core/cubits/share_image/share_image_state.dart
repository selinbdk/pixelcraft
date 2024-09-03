part of 'share_image_cubit.dart';

sealed class ShareImageState extends Equatable {
  const ShareImageState();

  @override
  List<Object> get props => [];
}

final class ShareImageInitial extends ShareImageState {
  const ShareImageInitial();

  @override
  List<Object> get props => [];
}

final class ShareImageLoading extends ShareImageState {
  const ShareImageLoading();

  @override
  List<Object> get props => [];
}

final class ShareImageSuccess extends ShareImageState {
  const ShareImageSuccess();

  @override
  List<Object> get props => [];
}

final class ShareImageFailure extends ShareImageState {
  const ShareImageFailure({
    required this.message,
  });

  final String message;
  @override
  List<Object> get props => [message];
}


final class SharePermissionDenied extends ShareImageState {
  const SharePermissionDenied({
    required this.message,
  });

  final String message;
  @override
  List<Object> get props => [message];
}
