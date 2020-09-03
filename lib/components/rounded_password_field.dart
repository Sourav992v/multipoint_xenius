import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/components/text_field_container.dart';
import 'package:mutipoint_xenius/constants.dart';

class RoudedPasswordField extends StatelessWidget {
  final String hintText;

  final TextEditingController passwordController;

  RoudedPasswordField({this.passwordController, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        controller: passwordController,
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
