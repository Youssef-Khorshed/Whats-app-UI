// ignore_for_file: prefer_initializing_formals, prefer_const_constructors, unused_import, must_be_immutable, use_key_in_widget_constructors, unnecessary_string_interpolations, duplicate_ignore, unnecessary_new, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Repository/Fake/screendara/screendata.dart';
import 'package:untitled/Shared/Compoent_SizedBox/sizedbox.dart';
import 'package:untitled/ViewModels/SingleMessage_ViewModel/ViewModel.dart';
import 'package:untitled/ViewModels/SingleMessage_ViewModel/ViewModelState.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Builder(builder: (context) {
      return BlocConsumer<SingleMessage_ViewModel,
          SingleMessage_ViewModelState>(
        listener: (context, state) {},
        builder: (context, state) {
          SingleMessage_ViewModel model = SingleMessage_ViewModel.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(model.get_user_image()),
                  ),
                  // ignore: prefer_const_constructors
                  space_width(),
                  Container(
                    width: 70,
                    child: Text(
                      model.get_username(),
                      style: Theme.of(context).textTheme.bodyText1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  )
                ],
              ),
              leading: TextButton(
                  onPressed: () {
                    model.back(context);
                  },
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            bottomNavigationBar: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          controller: model.get_text(),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          decoration: InputDecoration(
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              hintText: model.get_hint_text(),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      model.get_text().clear();
                    },
                    child: Icon(Icons.arrow_forward_sharp))
              ],
            ),

            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (con, ind) => model.item(message: 'Hi'),
                        separatorBuilder: (con, ind) => Container(
                              height: 5,
                            ),
                        itemCount: 1),
                    ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (con, ind) =>
                            model.item2(message: 'Hello'),
                        separatorBuilder: (con, ind) => Container(
                              height: 5,
                            ),
                        itemCount: 1)
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
