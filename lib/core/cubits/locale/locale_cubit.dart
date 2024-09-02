
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';



class LocaleCubit extends HydratedCubit<Locale> {
  LocaleCubit() : super(const Locale('en'));

  void changeLanguage(String newLanguageCode) {
    final newLocale = Locale(newLanguageCode);

    emit(newLocale);
  }

  @override
  Locale fromJson(Map<String, dynamic> json) => json['value'] as Locale;

  @override
  Map<String, Locale> toJson(Locale state) => {'value': state};
}
