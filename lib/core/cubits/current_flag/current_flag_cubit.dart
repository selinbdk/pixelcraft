
import 'package:hydrated_bloc/hydrated_bloc.dart';


class CurrentFlagCubit extends HydratedCubit<int> {
  CurrentFlagCubit() : super(0);

  void toggleFlagIndex(List<String> languageCodes) {
    final newIndex = (state + 1) % languageCodes.length;
    emit(newIndex);
  }


  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => { 'value': state };




}
