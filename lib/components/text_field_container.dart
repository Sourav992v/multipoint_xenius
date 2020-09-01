import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: kTextColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
