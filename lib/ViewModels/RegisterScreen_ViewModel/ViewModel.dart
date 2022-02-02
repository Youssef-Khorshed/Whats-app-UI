// ignore_for_file: file_names, non_constant_identifier_names, unnecessary_new, prefer_final_fields, unused_field, curly_braces_in_flow_control_structures, camel_case_types, unnecessary_string_escapes, prefer_function_declarations_over_variables, unused_local_variable

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Shared/component_toast/toast.dart';
import 'package:untitled/Shared/components_navigation/navigation.dart';
import 'ViewModelState.dart';

class RegisterationScreen_ViewModel
    extends Cubit<RegisterationScreen_ViewModel_States> {
  RegisterationScreen_ViewModel()
      : super(RegisterationScreen_ViewModel_InitialState());

// variables
  bool _buttonregister = true;
  static bool _check_pass_icon = true;
  static IconData _icon_password = Icons.visibility_off_outlined;
  static bool _check_confirm_pass_icon = true;
  static IconData _icon_confirm_password = Icons.visibility_off_outlined;
  static String _pass_confirm = '';
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  FormFieldValidator<String> _email_valiation = (value) {
    if (value.toString().isEmpty)
      return 'Please enter  your email';
    else if (!value.toString().endsWith('@gmail.com'))
      return 'Please enter  your gmail';
  };
  FormFieldValidator<String> _password_valiation = (value) {
    if (value.toString().isEmpty)
      return 'password is wrong';
    else if (value.toString().length < 6)
      return 'password is too short';
    else {
      _pass_confirm = value.toString();
    }
  };
  FormFieldValidator<String> _confirm_password_valiation = (value) {
    (value) {
      if (value.toString().isEmpty)
        return 'Confirm password is wrong';
      else if (_pass_confirm != value.toString()) {
        return 'Confirm password does not match with password';
      }
    };
  };
  FormFieldValidator<String> _name_valiation = (value) {
    if (value.toString().isEmpty) return 'Please enter  your name';
  };
  FormFieldValidator<String> _phone_valiation = (value) {
    if (value.toString().isEmpty)
      return 'Please enter  your phone';
    else if (value.toString().length < 11) return 'phone is wrong';
  };

  String _login_text = 'Sing in';
  String _sign_up_title_text = 'Login to get our offers';
  String _wait_text = 'Please Wait......';
  String _account_text = 'Already have Account';
// methods
  static RegisterationScreen_ViewModel get(context) => BlocProvider.of(context);

  void Regiteration(
      {required String name,
      required String phone,
      required String password,
      required String email}) async {
    try {
      _buttonregister = false;
      emit(RegisterationScreen_ViewModel_LoadingSinginState());
      Timer(Duration(seconds: 2), () {
        _buttonregister = true;
        emit(RegisterationScreen_ViewModel_LoadingSinginState());
      });
    } catch (error) {
      _buttonregister = true;
      emit(RegisterationScreen_ViewModel_ErrorSignineState(
          mess: error.toString()));
    }
  }

  void switch_password_suffix_Icon() {
    _check_pass_icon = !_check_pass_icon;
    _check_pass_icon
        ? _icon_password = Icons.visibility_off_outlined
        : _icon_password = Icons.remove_red_eye_outlined;

    emit(RegisterationScreen_ViewModel_SwichEye_password_State());
  }

  void switch_Confirm_password_suffix_Icon() {
    _check_confirm_pass_icon = !_check_confirm_pass_icon;

    _check_confirm_pass_icon
        ? _icon_confirm_password = Icons.visibility_off_outlined
        : _icon_confirm_password = Icons.remove_red_eye_outlined;

    emit(RegisterationScreen_ViewModel_SwichEye_confirm_password_State());
  }

  void go_to_Login({required BuildContext context, required Widget widget}) {
    navgiation(context: context, widget: widget);
    emit(RegisterationScreen_ViewModel_GotoSigninState());
  }

  void after_sucess_regiteration(
      {required BuildContext context, required Widget widget}) {
    toast(message: 'Success Registeration', toast_state: Toast_state.success);
    //  Preferences.set(key: 'userid', value: id);
    navgiation(context: context, widget: widget);
  }

  Color butto_color() {
    return _buttonregister ? Colors.white : Colors.grey;
  }

  String button_text() {
    return _buttonregister ? 'Register' : 'please wait....!';
  }

  // Getter
  bool get_buttonregister() => _buttonregister;
  bool get_check_pass_icon() => _check_pass_icon;
  bool get_check_confirm_pass_icon() => _check_confirm_pass_icon;
  String get_login_text() => _login_text;
  String get_account_text() => _account_text;
  String get_sign_up_title_text() => _sign_up_title_text;
  String get_wait_text() => _wait_text;
  IconData get_icon_password() => _icon_password;
  IconData get_icon_confirm_password() => _icon_confirm_password;
  TextEditingController get_name_controller() => _name;
  TextEditingController get_phone_controller() => _phone;
  TextEditingController get_email_controller() => _email;
  TextEditingController get_password_controller() => _password;
  TextEditingController get_confirmpassword_controller() => _confirmpassword;
  GlobalKey<FormState> get_formkey() => _formkey;
  FormFieldValidator<String> get_email_valiation() => _email_valiation;
  FormFieldValidator<String> get_password_valiation() => _password_valiation;
  FormFieldValidator<String> get_confirm_password_valiation() =>
      _confirm_password_valiation;
  FormFieldValidator<String> get_name_valiation() => _name_valiation;
  FormFieldValidator<String> get_phone_valiation() => _phone_valiation;
}
