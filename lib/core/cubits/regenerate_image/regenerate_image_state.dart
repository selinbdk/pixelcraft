part of 'regenerate_image_cubit.dart';

sealed class RegenerateImageState extends Equatable {
  const RegenerateImageState();

  @override
  List<Object> get props => [];
}

final class RegenerateImageInitial extends RegenerateImageState {
  const RegenerateImageInitial();

  @override
  List<Object> get props => [];

}

final class RegenerateImageLoading extends RegenerateImageState {
  const RegenerateImageLoading();

  @override
  List<Object> get props => [];
}

final class RegenerateImageSuccess extends RegenerateImageState {
  const RegenerateImageSuccess(this.imageResponseModel);
  final ImageResponseModel imageResponseModel;

  @override
  List<Object> get props => [imageResponseModel];
}

final class RegenerateImageFailure extends RegenerateImageState {
  const RegenerateImageFailure({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}
