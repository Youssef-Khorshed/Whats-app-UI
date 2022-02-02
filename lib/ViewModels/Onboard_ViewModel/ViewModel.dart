// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ViewModels/Onboard_ViewModel/ViewModelState.dart';

class Onboard extends Cubit<Onboard_ViewModelState> {
  Onboard() : super(Onboard_IntialState());

  Onboard get(BuildContext context) => BlocProvider.of(context);

// variables

// methods

//Get

}
