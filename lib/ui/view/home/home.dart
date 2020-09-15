import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/ui/view/home/components/collapsing_toolbar.dart';
import 'package:mutipoint_xenius/ui/view/home/components/overview.dart';

class Home extends StatefulWidget {
  static const String id = 'home';

  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOption = [
    OverviewPage(),
    Text(
      'Index 1: Recharge',
      style: optionStyle,
    ),
    Text(
      'Index 2: Report',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool isScrolled) {
          return <Widget>[
            CollapsingToolBar(),
          ];
        },
        body: Container(
          child: _widgetOption.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: 'Recharge',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Report',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kColorAccentRed,
        onTap: _onItemTapped,
      ),
    );
  }
}
