// ignore_for_file: file_names, non_constant_identifier_names, unnecessary_new, prefer_final_fields, unused_field, curly_braces_in_flow_control_structures, camel_case_types, prefer_const_constructors

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Repository/Fake/screendara/screendata.dart';
import 'package:untitled/Shared/components_navigation/navigation.dart';
import 'package:untitled/Views/SingleMessageScreen/message_page.dart';

import 'ViewModelState.dart';

class Home_ViewModel extends Cubit<Home_ViewModel_States> {
  Home_ViewModel() : super(Home_ViewModel_InitialState());
// variables
  List<Widget> icon = [Icon(Icons.call)];

//methods

  static Home_ViewModel get(BuildContext context) => BlocProvider.of(context);

  Widget item({required int index, required BuildContext context}) {
    return InkWell(
      onTap: () {
        navgiation(context: context, widget: MessagePage());
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade200,
          backgroundImage: NetworkImage('${Screen2Data.images[index]}'),
        ),
        title: Text(' User ${new Random().nextInt(1000)}'),
        trailing: Text('yesterday'),
      ),
    );
  }

  Widget item2({required int index, required BuildContext context}) {
    return InkWell(
      onTap: () {
        navgiation(context: context, widget: MessagePage());
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade200,
          backgroundImage: NetworkImage('${Screen2Data.images[index]}'),
        ),
        title: Text(' User ${Random().nextInt(1000)}'),
        subtitle: Row(
          children: [icon[Random().nextInt(icon.length)], Text('yesterday')],
        ),
        trailing: icon[Random().nextInt(icon.length)],
      ),
    );
  }

// Getter

}
