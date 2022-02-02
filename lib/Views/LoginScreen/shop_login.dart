// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors, must_be_immutable, camel_case_types, unused_import, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Shared/component_toast/toast.dart';
import 'package:untitled/Shared/components_text_widget/components.dart';
import 'package:untitled/ViewModels/LoginScreen_ViewModel%20copy/ViewModel.dart';
import 'package:untitled/ViewModels/LoginScreen_ViewModel%20copy/ViewModelState.dart';
import 'package:untitled/Views/HomeScreen/homescreen.dart';
import 'package:untitled/Views/RegisterScreen/register.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginScreen_ViewModel, LoginScreen_ViewModel_States>(
        builder: (context, state) {
      LoginScreen_ViewModel loginCubit = LoginScreen_ViewModel.get(context);
      return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Form(
                key: loginCubit.get_formkey(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${loginCubit.get_login_text()}',
                        style: Theme.of(context).textTheme.bodyText1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${loginCubit.get_login_title_text()}',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: textformfield(
                          controller: loginCubit.get_email_controller(),
                          inputborder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          validator: loginCubit.get_email_valiation(),
                          prefix_icon: Icons.email,
                          keyboard_type: TextInputType.emailAddress,
                          text: 'Email'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: textformfield(
                          inputborder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          controller: loginCubit.get_password_controller(),
                          validator: loginCubit.get_password_valiation(),
                          suffix_hand: () {
                            loginCubit.switch_password_suffix_Icon();
                          },
                          suffix_icon: loginCubit.get_icon_password(),
                          password: loginCubit.get_check_pass_icon(),
                          prefix_icon: Icons.lock,
                          keyboard_type: TextInputType.number,
                          text: 'Password'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: DefaultButton(
                            controller: loginCubit.get_buttonlogin()
                                ? () {
                                    if (loginCubit
                                        .get_formkey()
                                        .currentState!
                                        .validate()) {
                                      loginCubit.login(
                                          email: loginCubit
                                              .get_email_controller()
                                              .text,
                                          password: loginCubit
                                              .get_password_controller()
                                              .text);
                                      loginCubit.get_email_controller().clear();
                                      loginCubit
                                          .get_password_controller()
                                          .clear();
                                    }
                                  }
                                : null,
                            text_color: loginCubit.get_buttonlogin()
                                ? Colors.white
                                : Colors.black,
                            text: loginCubit.get_buttonlogin()
                                ? '${loginCubit.get_login_text()}'
                                : '${loginCubit.get_wait_text()}')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${loginCubit.get_account_text()}'),
                        TextButton(
                            onPressed: () {
                              loginCubit.go_to_registeration(
                                  context: context, widget: RegisterScreen());
                            },
                            child: Text('${loginCubit.get_register_text()}'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }, listener: (context, state) {
      LoginScreen_ViewModel loginCubit = LoginScreen_ViewModel.get(context);

      if (state is LoginScreen_ViewModel_SucessSigninState) {
        loginCubit.after_sucess_regiteration(
            context: context, widget: HomeScreen());
      }
      if (state is LoginScreen_ViewModel_ErrorSignineState) {
        toast(
            message: '${LoginScreen_ViewModel_ErrorSignineState.message}',
            toast_state: Toast_state.error);
      }
    });
  }
}

class Shop_register {}
