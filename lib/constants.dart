import 'package:flutter/material.dart';

const Color myGreen = Color(0xff42CB91);
const Color mydeepGreen = Color(0xFF0E5357);
const Color myWhite = Colors.white;
const Color myBlack = Colors.black;
const Color myGrey = Color(0xffEEEEEE);
const Color kMynaveyBlue = Color(0XFF162337);
const Color myLightGrey = Color(0xFFC4C4C4);
const Color myPurple = Color(0xff9c27b0);
const Color myRed = Color(0xfff44336);
const Color myYellow = Color(0xffffEB3B);

const kMybordeeStyle = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.transparent),
);

const List<Color> kMyColor = [
  // ,
  Color(0XFF162337),
  Color(0xff42CB91),
  Color(0xfff44336),
  Color(0xFF0E5357),
  Color(0xff304ffe),
  Color(0xffffEB3B),
  Color(0xff455a64),
  Color(0xfff4511e),
  Color(0XFF162337),
  Color(0xff42CB91),
  Color(0xfff44336),
  Color(0xFF0E5357),
  Color(0xff9c27b0),
  Color(0xff455a64),
  Color(0xfff4511e),
  Color(0XFF162337),
];

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
