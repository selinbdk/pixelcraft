import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';

class BookMarksCubit extends HydratedCubit<List<ImageResponseCollection>> {
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

  @override
  List<ImageResponseCollection> fromJson(Map<String, dynamic> json) {
    return (json['bookmarksList'] as List)
        .map((e) => ImageResponseCollection.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Map<String, dynamic> toJson(List<ImageResponseCollection> state) {
    return {
      'bookmarksList': state.map((e) => e.toJson()).toList(),
    };
  }
}
