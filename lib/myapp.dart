// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ViewModels/Home_ViewModel/ViewModel.dart';
import 'package:untitled/ViewModels/Onboard_ViewModel/ViewModel.dart';
import 'package:untitled/ViewModels/SingleMessage_ViewModel/ViewModel.dart';
import 'ViewModels/LoginScreen_ViewModel copy/ViewModel.dart';
import 'ViewModels/RegisterScreen_ViewModel/ViewModel.dart';
import 'Views/SplashScreen/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // ignore: prefer_const_literals_to_create_immutables
      providers: [
        BlocProvider(create: (context) => RegisterationScreen_ViewModel()),
        BlocProvider(create: (context) => Home_ViewModel()),
        BlocProvider(create: (context) => LoginScreen_ViewModel()),
        BlocProvider(create: (context) => SingleMessage_ViewModel()),
        BlocProvider(create: (context) => Onboard())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.green.shade900),
          primarySwatch: Colors.green,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
