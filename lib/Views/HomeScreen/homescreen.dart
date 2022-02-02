// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors, unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Repository/Fake/screendara/screendata.dart';
import 'package:untitled/Shared/Compoent_SizedBox/sizedbox.dart';
import 'package:untitled/ViewModels/Home_ViewModel/ViewModel.dart';
import 'package:untitled/ViewModels/Home_ViewModel/ViewModelState.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Home_ViewModel, Home_ViewModel_States>(
        builder: (context, state) {
          Home_ViewModel model = Home_ViewModel.get(context);
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                // ignore: prefer_const_constructors
                title: Text(
                  'WhatsApp',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  )
                ],
                bottom: TabBar(
                  tabs: [
                    Text('CHATS'),
                    Text('CALLLS'),
                  ],
                ),
              ),
              body: Container(
                color: Colors.green.shade900,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Colors.white),
                        child: ListView.separated(
                            itemBuilder: (context, index) =>
                                model.item(index: index, context: context),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 20,
                                ),
                            itemCount: Screen2Data.images.length),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Colors.white),
                        child: ListView.separated(
                            itemBuilder: (context, index) =>
                                model.item2(index: index, context: context),
                            separatorBuilder: (context, index) => space_width(),
                            itemCount: Screen2Data.images.length),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
