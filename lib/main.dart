import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/locator.dart';

import 'ui/view/home/components/month_consumption.dart';
import 'ui/view/home/home.dart';
import 'ui/view/login/login_view.dart';
import 'package:logging/logging.dart';

void main() {
  setupLoactor();
  _setUpLogging();
  runApp(MultipointXeniusApp());
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MultipointXeniusApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kColorPrimary,
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: LoginView.id,
      routes: {
        LoginView.id: (context) => LoginView(),
        Home.id: (context) => Home(),
        MonthConsumtion.id: (context) => MonthConsumtion()
      },
    );
  }
}
