import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile/widgets/custom_listile.dart';

import '../constants.dart';

class ProfilePage extends StatefulWidget {
  final String userProfession;
  final String nameFromUser;
  final String userDetails;
  // final String twitterHandle;
  final String gitHubHandle;
  final File myImage;
  ProfilePage(
      {Key key,
      @required this.nameFromUser,
      @required this.userDetails,
      @required this.userProfession,
      // @required this.twitterHandle,
      @required this.gitHubHandle,
      this.myImage})
      : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    print(widget.userDetails);
    print(widget.nameFromUser);
    print(widget.myImage);
    return Scaffold(
      backgroundColor: myGrey,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 15, right: 15),
            height: MediaQuery.of(context).size.height / 2.9,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kMynaveyBlue,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.myImage == null
                    ? CircleAvatar(
                        radius: 50,
                        child: Image.asset(
                          'assets/zuri.png',
                        ))
                    : Image.file(
                        widget.myImage,
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.nameFromUser.isEmpty
                      ? 'USERNAME'
                      : widget.nameFromUser,
                  style: GoogleFonts.poppins(
                    color: myGreen,
                    fontSize: 20,
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.work,
                    color: myGreen,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.userProfession.isEmpty
                        ? 'No Data'
                        : widget.userProfession,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                      color: myGreen,
                      fontSize: 20,
                    ),
                  ),
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'About',
              style: GoogleFonts.poppins(
                color: kMynaveyBlue,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: myGrey,
              borderRadius: BorderRadius.circular(15),
              boxShadow: Const.boxShadow,
            ),
            child: Text(
              widget.userDetails.isEmpty
                  ? 'No Details Provided'
                  : widget.userDetails,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // CustomTile(
          //   title: 'Twitter',
          //   subtitle: widget.twitterHandle.isEmpty
          //       ? 'No data'
          //       : widget.twitterHandle,
          //   icon: ImageIcon(
          //     AssetImage('assets/twitterlogo.png'),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          CustomTile(
            title: 'Github',
            subtitle: widget.gitHubHandle.isEmpty
                ? '@Xclusivecyborg'
                : widget.gitHubHandle,
            icon: Image.asset('assets/git.png'),
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Visit us:'),
              SizedBox(
                width: 5,
              ),
              Text(
                'https://internship.zuri.team/',
                style: GoogleFonts.poppins(
                  color: Colors.lightBlue,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
