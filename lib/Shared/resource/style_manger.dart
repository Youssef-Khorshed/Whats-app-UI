import 'package:flutter/material.dart';

import 'fontFamily.dart';

TextStyle _getTextStyle(
    Color color, double fontSize, FontWeight fontWight, String fontfamily) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWight,
      fontFamily: fontfamily);
}

TextStyle getregulerStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      color, fontSize = fontSize, Fontweight.Regular, FontConstanse.fontFamily);
}

TextStyle getlightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      color, fontSize = fontSize, Fontweight.Light, FontConstanse.fontFamily);
}

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      color, fontSize = fontSize, Fontweight.Bold, FontConstanse.fontFamily);
}

TextStyle getSemiboldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(color, fontSize = fontSize, Fontweight.SemiBold,
      FontConstanse.fontFamily);
}

TextStyle getmediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      color, fontSize = fontSize, Fontweight.Medium, FontConstanse.fontFamily);
}
