import 'package:flutter/material.dart';
import 'package:user_profile/constants.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {Key key,
      @required this.controller,
      this.containerHeight,
      @required this.hintText,
      @required this.myIcon,
      this.validateFunction,
      this.onSaved,
      this.maxlength})
      : super(key: key);

  final TextEditingController controller;
  final double containerHeight;
  final String hintText;
  final Widget myIcon;
  final FormFieldValidator<String> validateFunction;
  final void Function(String) onSaved;
  final int maxlength;
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    String error;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          height: widget.containerHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: kMynaveyBlue,
            ),
          ),
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            maxLength: widget.maxlength,
            onSaved: (val) {
              error = widget.validateFunction(val);
              setState(() {});
              widget.onSaved(val);
            },
            onChanged: (val) {
              widget.validateFunction != null
                  ? error = widget.validateFunction(val)
                  : error = null;
              setState(() {});
              // widget.onSaved(val);
            },
            validator: widget.validateFunction != null
                ? widget.validateFunction
                : (value) {
                    return null;
                  },
            controller: widget.controller,
            decoration: InputDecoration(
              prefixIcon: widget.myIcon,
              border: InputBorder.none,
              hintText: widget.hintText,
            ),
          ),
        ),
        if (error != null)
          Container(
            height: 5.0,
          )
        else
          Container(),
        if (error != null)
          Text(
            error,
            style: TextStyle(
              color: Colors.red,
            ),
          )
        else
          Container(),
        Container(
          height: 5,
        ),
      ],
    );
  }
}
