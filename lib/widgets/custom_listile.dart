import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  CustomTile({
    Key key,
    @required this.title,
    @required this.subtitle,
    this.icon,
  }) : super(key: key);

  @override
  _CustomTileState createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kMynaveyBlue,
        boxShadow: Const.boxShadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            color: myGreen,
            fontSize: 20.0,
          ),
        ),
        subtitle: Text(
          widget.subtitle,
          style: GoogleFonts.poppins(
            color: myGreen,
            fontSize: 17.0,
          ),
        ),
        contentPadding: EdgeInsets.only(left: 25, right: 15),
        leading: CircleAvatar(
          maxRadius: 20,
          child: widget.icon,
        ),
      ),
    );
  }
}

// class Customtile extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final Function ontap;
//   Color border = Const.myLightBlue;
//
//   Customtile(
//       {this.icon,
//         this.title,
//         Key key,
//         this.ontap,
//         this.border = Const.myLightGrey})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // return Padding(
//     // padding: const EdgeInsets.all(8.0),
//     return ListTile(
//       contentPadding: EdgeInsets.only(left: 25, right: 15),
//       onTap: ontap,
//       shape: Border(
//         bottom: BorderSide(color: border),
//       ),
//       title: Text(
//         title,
//         style: GoogleFonts.poppins(
//           color: Const.myBlack,
//           fontSize: 17.0,
//         ),
//       ),
//       trailing: Icon(
//         icon,
//         color: Const.myBlack,
//         size: 17.0,
//       ),
//     );
//     // );
//   }
// }
