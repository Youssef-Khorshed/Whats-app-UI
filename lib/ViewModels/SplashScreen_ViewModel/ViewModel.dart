// ignore: file_names
// ignore_for_file: file_names, prefer_final_fields, camel_case_types, non_constant_identifier_names, prefer_const_constructors, duplicate_ignore

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/Shared/components_navigation/navigation.dart';

class SplashScreen_ViewModel {
  String _image = 'assets/1.png';

  void go_To_nextPage(
      {required BuildContext context, required Widget next_widget}) {
    Timer(Duration(seconds: 4), () {
      navgiation(context: context, widget: next_widget);
    });
  }

  String get_splashScreen_image() => _image;
}
