import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile/constants.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: AlertDialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 20.0, vertical: MediaQuery.of(context).size.height / 3),
        content: Center(
          child: Text(
            "\nPlease fill the required fields",
            style: GoogleFonts.poppins(
                fontSize: 15, fontWeight: FontWeight.w500, color: kMynaveyBlue),
          ),
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kMynaveyBlue),
              ),
              onPressed: () {
                return Navigator.of(context).pop();
              },
              child: Text(
                "Click to go back",
                style: GoogleFonts.poppins(
                    color: myGreen,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
