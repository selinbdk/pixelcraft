import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'generate_image_state.dart';

class GenerateImageCubit extends Cubit<GenerateImageState> {
  GenerateImageCubit() : super(const GenerateImageInitial());
}
