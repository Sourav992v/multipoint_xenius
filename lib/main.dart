import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'ui/screens/login_screen.dart';

void main() {
  runApp(MultipointXeniusApp());
}

class MultipointXeniusApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kColorPrimary,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreeen(),
    );
  }
}
