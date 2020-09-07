import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/locator.dart';
import 'package:mutipoint_xenius/ui/view/home/components/overview_balance_card_layout.dart';
import 'package:mutipoint_xenius/ui/view/home/components/today_consumption.dart';
import 'package:mutipoint_xenius/ui/widget.dart';

import 'ui/view/home/components/month_consumption.dart';
import 'ui/view/home/home.dart';
import 'ui/view/login/login_view.dart';

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
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: MonthConsumtion.id,
      routes: {
        LoginView.id: (context) => LoginView(),
        Home.id: (context) => Home(),
        MonthConsumtion.id: (context) => MonthConsumtion()
      },
    );
  }
}
