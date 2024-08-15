part of 'remove_image_cubit.dart';

sealed class RemoveImageState extends Equatable {
  const RemoveImageState();

  @override
  List<Object> get props => [];
}

final class RemoveImageInitial extends RemoveImageState {
  const RemoveImageInitial();

  @override
  List<Object> get props => [];

}


final class RemoveImageLoading extends RemoveImageState {
  const RemoveImageLoading();

  @override
  List<Object> get props => [];
}

final class RemoveImageSuccess extends RemoveImageState {
  const RemoveImageSuccess();

  @override
  List<Object> get props => [];
}

final class RemoveImageFailure extends RemoveImageState {
  const RemoveImageFailure({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
