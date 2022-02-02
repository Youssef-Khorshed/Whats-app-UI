import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefaultButton(
        {double width = double.infinity,
        Color text_color = Colors.white,
        Color button_color = Colors.blueGrey,
        FontWeight text_font_weight = FontWeight.bold,
        VoidCallback? controller,
        required String text,
        double radius = 0.0}) =>
    Container(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
            onPressed: controller,
            style: ElevatedButton.styleFrom(
                onSurface: Colors.blue, onPrimary: button_color),
            child: Text(
              '$text',
              style: TextStyle(color: text_color, fontWeight: text_font_weight),
            )),
      ),
    );

Widget OutlineContainer(
        {required double width,
        Color text_color = Colors.white,
        Color button_color = Colors.lightBlue,
        FontWeight text_font_weight = FontWeight.bold,
        VoidCallback? controller,
        required String text,
        double radius = 0.0}) =>
    Container(
      width: width,
      height: 30,
      decoration: BoxDecoration(border: Border.all(color: button_color)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
            onTap: controller,
            child: Center(
              child: Text(
                '$text',
                style:
                    TextStyle(color: text_color, fontWeight: text_font_weight),
              ),
            )),
      ),
    );

//----------------------------------------------
Widget textformfield(
        {required TextEditingController controller,
        required IconData prefix_icon,
        IconData? suffix_icon,
        required TextInputType keyboard_type,
        bool password = false,
        String? text,
        String? hint,
        double radius = 0.0,
        FormFieldValidator<String>? validator,
        VoidCallback? suffix_hand,
        GestureTapCallback? ontap,
        InputBorder? inputborder,
        Function(String)? onchange,
        Function(String)? onsubmit,
        bool? enabled}) =>
    TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboard_type,
      obscureText: password,
      onTap: ontap,
      onFieldSubmitted: onsubmit,
      onChanged: onchange,
      enabled: enabled,
      style: TextStyle(fontSize: 15),
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 15),
        labelText: hint == null ? '$text' : null,
        hintText: text == null ? '$hint' : null,
        border: inputborder ?? inputborder,
        prefixIcon: IconButton(
          onPressed: suffix_hand,
          icon: Icon(prefix_icon),
        ),
        suffixIcon: IconButton(
          onPressed: suffix_hand,
          icon: Icon(suffix_icon),
        ),
      ),
    );
