part of 'generate_image_cubit.dart';

sealed class GenerateImageState extends Equatable {
  const GenerateImageState();

  @override
  List<Object> get props => [];
}

final class GenerateImageInitial extends GenerateImageState {
  const GenerateImageInitial();

  @override
  List<Object> get props => [];
}

final class GenerateImageLoading extends GenerateImageState {
  const GenerateImageLoading();

  @override
  List<Object> get props => [];
}

final class GenerateImageSuccess extends GenerateImageState {
  const GenerateImageSuccess(this.imageResponseModel);
  final ImageResponseModel imageResponseModel;

  @override
  List<Object> get props => [imageResponseModel];
}

final class GenerateImageFailure extends GenerateImageState {
  const GenerateImageFailure({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}
