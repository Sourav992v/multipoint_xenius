import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';

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
  static const List<Widget> _widgetOption = [
    Text(
      'Index 0: Overview',
      style: optionStyle,
    ),
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
            SliverAppBar(
              expandedHeight: 128.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Unit No',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                background: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/ic_xenius_logo.png',
                    fit: BoxFit.contain,
                    color: Color.fromRGBO(
                      255,
                      255,
                      255,
                      0.5,
                    ),
                  ),
                ),
              ),
            )
          ];
        },
        body: Center(
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
