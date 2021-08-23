import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile/screens/details.dart';
import 'package:user_profile/widgets/customButton.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/zuri.png',
                  ),
                ),
              ),
            ),
            Text(
              'ZURI INTERNSHIP',
              style: GoogleFonts.nunitoSans(
                color: kMynaveyBlue,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/Hiring.png',
              height: MediaQuery.of(context).size.width / 3,
            ),
            SizedBox(
              height: 10,
            ),
            AnimatedTextKit(repeatForever: true, animatedTexts: [
              ColorizeAnimatedText(
                'Hi , welcome to ZURI',
                colors: kMyColor,
                // speed: Duration(seconds: 1),
                textStyle: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  color: myBlack,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ]
                // 'Hi , welcome to ZURI',

                ),
            SizedBox(
              height: 24,
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  'Click The Button Below to Get Started',
                  textStyle: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: myBlack,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            CustomButton(
              buttonText: "Get Started",
              onpressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Details(),
                    // builder: (_) => ProfilePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
