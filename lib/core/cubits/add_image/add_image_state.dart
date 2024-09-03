part of 'add_image_cubit.dart';

sealed class AddImageState extends Equatable {
  const AddImageState();

  @override
  List<Object> get props => [];
}

final class AddImageInitial extends AddImageState {
  const AddImageInitial();

  @override
  List<Object> get props => [];
}

final class AddImageLoading extends AddImageState {
  const AddImageLoading();

  @override
  List<Object> get props => [];
}

final class AddImageSuccess extends AddImageState {
  const AddImageSuccess(this.collection);

  final ImageResponseCollection collection;

  @override
  List<Object> get props => [collection];
}

final class AddImageFailure extends AddImageState {
  const AddImageFailure({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
