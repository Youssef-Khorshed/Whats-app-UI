// ignore_for_file: file_names, camel_case_types

abstract class RegisterationScreen_ViewModel_States {}

class RegisterationScreen_ViewModel_InitialState
    extends RegisterationScreen_ViewModel_States {}

class RegisterationScreen_ViewModel_LoadingSinginState
    extends RegisterationScreen_ViewModel_States {}

class RegisterationScreen_ViewModel_SucessSigninState
    extends RegisterationScreen_ViewModel_States {}

class RegisterationScreen_ViewModel_ErrorSignineState
    extends RegisterationScreen_ViewModel_States {
  static String? message;
  RegisterationScreen_ViewModel_ErrorSignineState({required String mess}) {
    message = mess;
  }
}

class RegisterationScreen_ViewModel_SwichEye_password_State
    extends RegisterationScreen_ViewModel_States {}

class RegisterationScreen_ViewModel_SwichEye_confirm_password_State
    extends RegisterationScreen_ViewModel_States {}

class RegisterationScreen_ViewModel_GotoSigninState
    extends RegisterationScreen_ViewModel_States {}
