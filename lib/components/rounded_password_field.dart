import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/components/text_field_container.dart';
import 'package:mutipoint_xenius/constants.dart';

class RoudedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const RoudedPasswordField({Key key, this.hintText, this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kTextColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kTextColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
