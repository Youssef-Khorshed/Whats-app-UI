// ignore_for_file: avoid_print, curly_braces_in_flow_control_structures, non_constant_identifier_names, must_be_immutable, camel_case_types, prefer_const_constructors, duplicate_ignore, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Shared/component_toast/toast.dart';
import 'package:untitled/Shared/components_text_widget/components.dart';
import 'package:untitled/ViewModels/RegisterScreen_ViewModel/ViewModel.dart';
import 'package:untitled/ViewModels/RegisterScreen_ViewModel/ViewModelState.dart';

import 'package:untitled/Views/HomeScreen/homescreen.dart';
import 'package:untitled/Views/LoginScreen/shop_login.dart';

// ignore: use_key_in_widget_constructors
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterationScreen_ViewModel,
        RegisterationScreen_ViewModel_States>(builder: (context, state) {
      RegisterationScreen_ViewModel registercubit =
          RegisterationScreen_ViewModel.get(context);
      return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: registercubit.get_formkey(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sing up', style: Theme.of(context).textTheme.bodyText1),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sign up to get our offers',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  textformfield(
                      inputborder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      controller: registercubit.get_name_controller(),
                      validator: registercubit.get_name_valiation(),
                      prefix_icon: Icons.person,
                      keyboard_type: TextInputType.text,
                      text: 'Name'),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  textformfield(
                      inputborder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      controller: registercubit.get_email_controller(),
                      validator: registercubit.get_email_valiation(),
                      prefix_icon: Icons.email,
                      keyboard_type: TextInputType.emailAddress,
                      text: 'Email'),
                  SizedBox(
                    height: 20,
                  ),
                  textformfield(
                      inputborder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      controller: registercubit.get_phone_controller(),
                      validator: registercubit.get_phone_valiation(),
                      prefix_icon: Icons.phone,
                      keyboard_type: TextInputType.number,
                      text: 'Phone'),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  textformfield(
                      inputborder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      controller: registercubit.get_password_controller(),
                      prefix_icon: Icons.lock,
                      suffix_hand: () {
                        registercubit.switch_password_suffix_Icon();
                      },
                      validator: registercubit.get_password_valiation(),
                      suffix_icon: registercubit.get_icon_password(),
                      password: registercubit.get_check_pass_icon(),
                      keyboard_type: TextInputType.number,
                      text: 'Password'),
                  SizedBox(
                    height: 20,
                  ),
                  textformfield(
                      inputborder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      controller:
                          registercubit.get_confirmpassword_controller(),
                      prefix_icon: Icons.lock,
                      suffix_hand: () {
                        registercubit.switch_Confirm_password_suffix_Icon();
                      },
                      validator: registercubit.get_confirm_password_valiation(),
                      suffix_icon: registercubit.get_icon_confirm_password(),
                      password: registercubit.get_check_confirm_pass_icon(),
                      keyboard_type: TextInputType.number,
                      text: 'Confirm Password'),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  DefaultButton(
                      controller: registercubit.get_buttonregister()
                          ? () {
                              if (registercubit
                                  .get_formkey()
                                  .currentState!
                                  .validate()) {
                                registercubit.Regiteration(
                                    name: registercubit
                                        .get_name_controller()
                                        .text,
                                    phone: registercubit
                                        .get_phone_controller()
                                        .text,
                                    password: registercubit
                                        .get_password_controller()
                                        .text,
                                    email: registercubit
                                        .get_email_controller()
                                        .text);
                              }
                            }
                          : null,
                      text_color: registercubit.butto_color(),
                      text: registercubit.button_text()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${registercubit.get_account_text()}'),
                      TextButton(
                          onPressed: () {
                            registercubit.go_to_Login(
                                context: context, widget: LoginScreen());
                          },
                          child: Text('${registercubit.get_login_text()}'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }, listener: (context, state) {
      RegisterationScreen_ViewModel registercubit =
          RegisterationScreen_ViewModel.get(context);

      if (state is RegisterationScreen_ViewModel_SucessSigninState) {
        registercubit.after_sucess_regiteration(
            context: context, widget: HomeScreen());
      }
      if (state is RegisterationScreen_ViewModel_ErrorSignineState) {
        toast(message: 'Error', toast_state: Toast_state.error);
      }
    });
  }
}
