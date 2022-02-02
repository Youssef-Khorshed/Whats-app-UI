import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toast({required String message, required Toast_state toast_state}) {
  Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: toast_type(state: toast_state));
}

enum Toast_state { success, warrning, error }
Color toast_type({required Toast_state state}) {
  switch (state) {
    case Toast_state.success:
      return Colors.green;
    case Toast_state.warrning:
      return Colors.amber.shade100;
    case Toast_state.error:
      return Colors.redAccent;
  }
}
