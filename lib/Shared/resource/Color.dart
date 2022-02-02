// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ColorManger {
  static Color primary = HexColor.FromHex("#ED9728") ;
  static Color darkgray = HexColor.FromHex("#525252") ;
  static Color gray = HexColor.FromHex("#737477");
  static Color lightgray = HexColor.FromHex("#9E9E9E");
  static Color withopicty70 = HexColor.FromHex("#B3ED9728");


  static Color darkprimary = HexColor.FromHex("#d17d11");
  static Color gray1 = HexColor.FromHex("#707070");
  static Color gray2 = HexColor.FromHex("#797979");
  static Color wight = HexColor.FromHex("#FFFFFF");
  static Color erorr = HexColor.FromHex("#e61f34");


}
extension HexColor on Color{
  // ignore: non_constant_identifier_names
  static Color FromHex (String HexColorString){
   HexColorString =HexColorString.replaceAll('#', '');
   if (HexColorString.length==6){
     HexColorString="ff"+HexColorString;
   }
   return Color(int.parse(HexColorString,radix: 16));
  }
}