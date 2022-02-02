// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, unused_import, camel_case_types, non_constant_identifier_names, prefer_final_fields, unused_field, unnecessary_new, prefer_const_constructors, unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Repository/Fake/screendara/screendata.dart';
import 'package:untitled/Shared/components_navigation/navigation.dart';
import 'package:untitled/ViewModels/Onboard_ViewModel/ViewModelState.dart';
import 'package:untitled/ViewModels/SingleMessage_ViewModel/ViewModelState.dart';
import 'package:untitled/Views/HomeScreen/homescreen.dart';

class SingleMessage_ViewModel extends Cubit<SingleMessage_ViewModelState> {
  SingleMessage_ViewModel() : super(SingleMessage_IntialState());

// variables
  static String _user_image = Screen2Data.images[0];
  static TextEditingController _text = new TextEditingController();
  static String _username = 'Loka';
  static String _hint_text = 'Type your message ...';

// methods
  void back(BuildContext context) {
    navgiation(context: context, widget: HomeScreen());
    //  emit(SingleMessage_backHome());
  }

  static SingleMessage_ViewModel get(BuildContext context) =>
      BlocProvider.of(context);
  Widget item({required String message}) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${message}'),
        ),
      ),
    );
  }

  Widget item2({required String message}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${message}'),
        ),
      ),
    );
  }

//Get
  double get_ScreenWidth(context) => MediaQuery.of(context).size.width;
  String get_user_image() => _user_image;
  String get_username() => _username;
  String get_hint_text() => _hint_text;
  TextEditingController get_text() => _text;
}
