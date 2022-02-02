// ignore: file_names
// ignore_for_file: file_names

import 'package:untitled/Shared/resource/style_manger.dart';

import 'Color.dart';
import 'valuemanger.dart';
import 'package:flutter/material.dart';

ThemeData GetThemdata() {
  return ThemeData(
    primaryColor: ColorManger.primary,
    primaryColorLight: ColorManger.withopicty70,
    primaryColorDark: ColorManger.darkprimary,
    disabledColor: ColorManger.gray1,
    accentColor: ColorManger.gray,
    splashColor: ColorManger.withopicty70,
    cardTheme: CardTheme(
        color: ColorManger.wight,
        elevation: SizeApp.s4,
        shadowColor: Colors.grey),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        shadowColor: ColorManger.withopicty70,
        color: ColorManger.primary,
        elevation: SizeApp.s4,
        titleTextStyle:
            getregulerStyle(color: ColorManger.wight, fontSize: SizeApp.s16)),
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManger.gray,
      splashColor: ColorManger.withopicty70,
      buttonColor: ColorManger.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getregulerStyle(
              color: ColorManger.wight,
            ),
            primary: ColorManger.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeApp.s100)))),
    textTheme: TextTheme(
        bodyText1: getregulerStyle(color: ColorManger.gray),
        caption: getregulerStyle(color: ColorManger.gray1),
        headline1: getSemiboldStyle(
            color: ColorManger.darkgray, fontSize: SizeApp.s16),
        subtitle1:
            getmediumStyle(color: ColorManger.lightgray, fontSize: SizeApp.s14),
        subtitle2:
            getmediumStyle(color: ColorManger.primary, fontSize: SizeApp.s14)),
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsetsDirectional.all(paddingApp.p8),
        labelStyle: getmediumStyle(color: ColorManger.darkgray),
        errorStyle: getregulerStyle(color: ColorManger.erorr),
        hintStyle: getregulerStyle(color: ColorManger.gray1),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.gray1, width: SizeApp.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(SizeApp.s100)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: SizeApp.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(SizeApp.s100)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.erorr, width: SizeApp.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(SizeApp.s100)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: SizeApp.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(SizeApp.s100)),
        )),
  );
}
