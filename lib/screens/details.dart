import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile/constants.dart';
import 'package:user_profile/screens/profilepage.dart';
import 'package:user_profile/widgets/alertDialog.dart';
import 'package:user_profile/widgets/customButton.dart';
import 'package:user_profile/widgets/custom_textfield.dart';
import 'package:image_picker/image_picker.dart';

class Details extends StatefulWidget {
  const Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  File imagePicked;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      final pickedImage = File(image.path);

      setState(() {
        this.imagePicked = pickedImage;
      });
    } on PlatformException catch (e) {
      print('Unable to pick Image: $e');
    }
  }

  GlobalKey<FormState> _resetForm = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController gitHubController = TextEditingController();
  // TextEditingController twitterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0, top: 10),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _resetForm,
            child: Column(
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
                  'Let Us Know You',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      color: kMynaveyBlue,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 10),
                MyTextField(
                  myIcon: Icon(
                    Icons.person,
                  ),
                  controller: nameController,
                  hintText: 'Your Name',
                  validateFunction: Validation.validateName,
                  maxlength: 26,
                ),
                SizedBox(height: 10),
                // MyTextField(
                //   myIcon: ImageIcon(
                //     AssetImage('assets/twitterlogo.png'),
                //   ),
                //   controller: twitterController,
                //   hintText: 'Twitter Handle',
                //   validateFunction: Validation.validateDetails,
                //   maxlength: 17,
                // ),
                // SizedBox(height: 10),
                MyTextField(
                  myIcon: Image.asset(
                    'assets/git.png',
                    height: 50,
                    width: 40,
                  ),
                  controller: gitHubController,
                  hintText: 'Github Handle',
                  validateFunction: Validation.validateDetails,
                ),
                SizedBox(height: 10),
                MyTextField(
                  myIcon: Icon(
                    Icons.work,
                  ),
                  controller: professionController,
                  hintText: 'Profession',
                  validateFunction: Validation.validateDetails,
                  maxlength: 25,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    TextButton.icon(
                      label: Text('Click to Add Image'),
                      onPressed: () async {
                        showModalBottomSheet(
                          context: context,
                          builder: (_) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: 100.0,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'Choose Profile Photo',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton.icon(
                                      label: Text('Camera'),
                                      onPressed: () {
                                        pickImage(ImageSource.camera);
                                      },
                                      icon: Icon(
                                        Icons.camera,
                                      ),
                                    ),
                                    ElevatedButton.icon(
                                      label: Text('Gallery'),
                                      onPressed: () {
                                        pickImage(ImageSource.gallery);
                                      },
                                      icon: Icon(
                                        Icons.image,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      icon: Container(
                        child: Icon(
                          Icons.add,
                        ),
                        margin: EdgeInsets.fromLTRB(24, 10, 24, 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kMynaveyBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    imagePicked != null
                        ? Image.file(imagePicked, height: 50, width: 80)
                        : Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                          ),
                  ],
                ),
                MyTextField(
                  myIcon: Icon(
                    Icons.edit,
                  ),
                  containerHeight: 150,
                  controller: detailsController,
                  hintText: 'Tell Us About You',
                  validateFunction: Validation.validateDetails,
                  maxlength: 250,
                ),
                SizedBox(height: 35),
                CustomButton(
                  buttonText: 'Go To Profile',
                  onpressed: () {
                    if (_resetForm.currentState.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ProfilePage(
                            myImage: imagePicked,
                            // twitterHandle: twitterController.text,
                            gitHubHandle: gitHubController.text,
                            userProfession: professionController.text,
                            userDetails: detailsController.text,
                            nameFromUser: nameController.text,
                          ),
                        ),
                      );
                    } else {
                      return showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertWidget(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
