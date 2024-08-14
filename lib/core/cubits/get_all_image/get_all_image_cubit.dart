import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_all_image_state.dart';

class GetAllImageCubit extends Cubit<GetAllImageState> {
  GetAllImageCubit() : super(GetAllImageInitial());
}
