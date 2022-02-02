import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utility/circular_border_radius.dart';
import 'app_colors.dart';

class ThemeManager {
  final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.white),
      fillColor: MaterialStateProperty.all(AppColors.mainBlue),
      side: const BorderSide(width: 1.0, color: AppColors.mainBlue),
      shape: RoundedRectangleBorder(borderRadius: CircularBorderRadius.four()),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 70, fontWeight: FontWeight.w300),
      subtitle1: TextStyle(fontSize: 10, color: AppColors.white),
      headline4: TextStyle(fontSize: 14, color: AppColors.primaryColor),
      headline6: TextStyle(fontSize: 8, color: AppColors.primaryColor, fontWeight: FontWeight.bold),
      caption: TextStyle(fontSize: 8, color: AppColors.mainBlue, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 8, color: AppColors.grey, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(fontSize: 10, color: AppColors.primaryColor),
      headline2: TextStyle(fontSize: 14, color: AppColors.white),
      headline3: TextStyle(fontSize: 12, color: AppColors.grey, fontWeight: FontWeight.bold),
      headline5: TextStyle(fontSize: 12, color: AppColors.mainBlue, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: CircularBorderRadius.ten())),
      ),
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: Color.fromRGBO(4, 4, 21, 1),
      primaryVariant: AppColors.white,
      secondary: Colors.grey,
      secondaryVariant: AppColors.mainBlue,
      surface: AppColors.azureBlue,
      background: AppColors.lightAzureBlue,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderGrey, width: 1.0),
          borderRadius: CircularBorderRadius.twelve()),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderGrey, width: 1.0),
          borderRadius: CircularBorderRadius.twelve()),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderGrey, width: 1.0),
          borderRadius: CircularBorderRadius.twelve()),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderGrey, width: 1.0),
          borderRadius: CircularBorderRadius.twelve()),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.red), borderRadius: CircularBorderRadius.twelve()),
    ),
  );
}
