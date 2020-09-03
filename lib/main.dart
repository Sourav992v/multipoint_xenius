import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/locator.dart';

import 'ui/view/home.dart';
import 'ui/view/login_view.dart';

void main() {
  setupLoactor();
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
      initialRoute: LoginView.id,
      routes: {
        LoginView.id: (context) => LoginView(),
        Home.id: (context) => Home(),
      },
    );
  }
}
