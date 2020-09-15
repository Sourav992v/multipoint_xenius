import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/ui/view/home/components/collapsing_toolbar.dart';
import 'package:mutipoint_xenius/ui/view/home/components/overview.dart';

class HomeView extends StatefulWidget {
  static const String id = 'home';

  HomeView({Key key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  ScrollController _scrollBottomBarController = ScrollController();
  double _containerMaxHeight = 56, _offset, _delta = 0, _oldOffset = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOption = [
    PageViewBalance(),
    Text(
      'Index 1: Recharge',
      style: optionStyle,
    ),
    Text(
      'Index 2: Report',
      style: optionStyle,
    ),
  ];

  @override
  void initState() {
    super.initState();

    _scrollBottomBarController = ScrollController()
      ..addListener(() {
        setState(() {
          double offset = _scrollBottomBarController.offset;
          _delta += (offset - _oldOffset);
          if (_delta > _containerMaxHeight)
            _delta = _containerMaxHeight;
          else if (_delta < 0) _delta = 0;
          _oldOffset = offset;
          _offset = -_delta;
        });
      });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          controller: _scrollBottomBarController,
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return <Widget>[
              CollapsingToolBar(),
            ];
          },
          body: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              controller: _scrollBottomBarController,
              child: Container(
                child: _widgetOption.elementAt(_selectedIndex),
              ),
            );
          }),
        ),
        bottomNavigationBar: Container(
          height: _containerMaxHeight,
          child: BottomNavigationBar(
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
        ));
  }
}
