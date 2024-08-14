import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_image_state.dart';

class AddImageCubit extends Cubit<AddImageState> {
  AddImageCubit() : super(AddImageInitial());
}
