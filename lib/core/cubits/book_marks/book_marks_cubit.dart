import 'package:bloc/bloc.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';

class BookMarksCubit extends Cubit<List<ImageResponseCollection>> {
  BookMarksCubit() : super(const []);

  void toggleBookmark(
    ImageResponseCollection collection,
  ) {
    final newState = List<ImageResponseCollection>.from(state);
    if (state.contains(collection)) {
      newState.remove(collection);
      emit(newState);
      return;
    }

    newState.add(collection);
    emit(newState);
  }
}
