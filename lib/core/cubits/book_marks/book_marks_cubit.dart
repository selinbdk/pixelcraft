import 'package:bloc/bloc.dart';
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
  List<ImageResponseCollection> fromJson(Map<String, dynamic> json) => json['value'] as List<ImageResponseCollection>;

  @override
  Map<String, List<ImageResponseCollection>> toJson(List<ImageResponseCollection> state) => {'value': state };



}
