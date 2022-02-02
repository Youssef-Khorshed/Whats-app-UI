// ignore_for_file: file_names, camel_case_types

abstract class LoginScreen_ViewModel_States {}

class LoginScreen_ViewModel_InitialState extends LoginScreen_ViewModel_States {}

class LoginScreen_ViewModel_LoadingSinginState
    extends LoginScreen_ViewModel_States {}

class LoginScreen_ViewModel_SucessSigninState
    extends LoginScreen_ViewModel_States {}

class LoginScreen_ViewModel_ErrorSignineState
    extends LoginScreen_ViewModel_States {
  static String? message;
  LoginScreen_ViewModel_ErrorSignineState({required String mess}) {
    message = mess;
  }
}

class LoginScreen_ViewModel_SwichEyeState extends LoginScreen_ViewModel_States {
}

class LoginScreen_ViewModel_GotoRegisterationState
    extends LoginScreen_ViewModel_States {}
