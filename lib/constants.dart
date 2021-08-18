import 'package:flutter/material.dart';

const Color myGreen = Color(0xff42CB91);
const Color mydeepGreen = Color(0xFF0E5357);
const Color myWhite = Colors.white;
const Color myBlack = Colors.black;
const Color myGrey = Color(0xffEEEEEE);
const Color kMynaveyBlue = Color(0XFF162337);
const myLightGrey = Color(0xFFC4C4C4);

class Const {
  static final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: myLightGrey,
      spreadRadius: 1,
      blurRadius: 3,
      offset: Offset(1, .5), // changes position of shadow
    ),
  ];
}

class Validation {
  static String validateName(String value) {
    if (value.isEmpty) return '  Field is required.';
    final RegExp nameExp = new RegExp(r'^[A-za-zğüşöçİĞÜŞÖÇ ]+$');
    if (!nameExp.hasMatch(value))
      return '  Please enter only alphabetical characters.';
    return null;
  }

  static String validateDetails(String value) {
    if (value.isEmpty) return '  Field is required.';
    return null;
  }
}
