import 'package:flutter/material.dart';
import 'package:user_profile/print_name.dart';
import 'package:user_profile/screens/landingPage.dart';

void main() {
  printName("Ogundairo Ayodeji");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
