// ignore_for_file: non_constant_identifier_names, unused_import, prefer_final_fields, unused_field, unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/ViewModels/SplashScreen_ViewModel/ViewModel.dart';
import 'package:untitled/Views/RegisterScreen/register.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreen_ViewModel model = new SplashScreen_ViewModel();

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      model.go_To_nextPage(context: context, next_widget: RegisterScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('${model.get_splashScreen_image()}'),
          width: width / 4,
          height: height / 4,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
