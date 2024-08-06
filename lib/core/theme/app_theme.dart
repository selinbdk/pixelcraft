import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';

abstract class AppPadding {
  static final EdgeInsets pagePadding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24).dm;
}

extension SizedBoxExtension on num {
  SizedBox get vSpace => SizedBox(
        height: ScreenUtil().setHeight(this),
      );
  SizedBox get  hSpace => SizedBox(
        width: ScreenUtil().setWidth(this),
      );
}

abstract class AppTheme {
  static final ThemeData theme = ThemeData(
    fontFamily: 'SfpRegular',
    scaffoldBackgroundColor: ColorName.primaryBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorName.primaryBackground,
    ),
    textTheme: const TextTheme(),
  );
}

extension ThemeX on BuildContext {
  TextTheme get appTextTheme => Theme.of(this).textTheme;
}
