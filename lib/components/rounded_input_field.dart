import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/components/text_field_container.dart';
import 'package:mutipoint_xenius/constants.dart';

class RoudedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoudedInputField({Key key, this.hintText, this.icon, this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kTextColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kTextColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
