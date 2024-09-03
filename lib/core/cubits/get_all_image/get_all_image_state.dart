part of 'get_all_image_cubit.dart';

sealed class GetAllImageState extends Equatable {
  const GetAllImageState();

  @override
  List<Object> get props => [];
}

final class GetAllImageInitial extends GetAllImageState {
  const GetAllImageInitial();

  @override
  List<Object> get props => [];
}

final class GetAllImageLoading extends GetAllImageState {
  const GetAllImageLoading();

  @override
  List<Object> get props => [];
}

final class GetAllImageSuccess extends GetAllImageState {
  const GetAllImageSuccess(this.imageList);

  final List<ImageResponseCollection> imageList;

  @override
  List<Object> get props => [imageList];
}

final class GetAllImageFailure extends GetAllImageState {
  const GetAllImageFailure({
    required this.message,
  });
  final String message;

  @override
  List<Object> get props => [];
}
