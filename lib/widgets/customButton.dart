import 'package:flutter/material.dart';
import 'package:user_profile/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onpressed;

  const CustomButton({Key key, this.buttonText, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 12,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kMynaveyBlue,
        ),
        child: TextButton(
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: GoogleFonts.nunitoSans(
                fontSize: 16, color: myGreen, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
