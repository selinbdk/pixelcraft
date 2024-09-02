
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';



class LocaleCubit extends HydratedCubit<Locale> {
  LocaleCubit() : super(const Locale('tr'));

  void changeLanguage(String newLanguageCode) {
    final newLocale = Locale(newLanguageCode);

    emit(newLocale);
  }

  @override
  Locale fromJson(Map<String, dynamic> json) => Locale(json['value']as String) ;

  @override
  Map<String, dynamic> toJson(Locale state) => {'value': state.languageCode};
}
