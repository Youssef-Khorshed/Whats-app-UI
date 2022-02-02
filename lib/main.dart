// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ViewModels/BlocObserver/bloc.dart';
import 'myapp.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
