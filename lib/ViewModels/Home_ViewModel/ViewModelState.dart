// ignore_for_file: file_names, camel_case_types

abstract class Home_ViewModel_States {}

class Home_ViewModel_InitialState extends Home_ViewModel_States {}

class Home_ViewModel_LoadingSinginState extends Home_ViewModel_States {}

class Home_ViewModel_SucessSigninState extends Home_ViewModel_States {}

class Home_ViewModel_ErrorSignineState extends Home_ViewModel_States {
  static String? message;
  Home_ViewModel_ErrorSignineState({required String mess}) {
    message = mess;
  }
}

class Home_ViewModel_SwichEyeState extends Home_ViewModel_States {}

class Home_ViewModel_GotoRegisterationState extends Home_ViewModel_States {}
