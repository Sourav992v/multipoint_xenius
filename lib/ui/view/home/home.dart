import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/ui/view/home/components/collapsing_toolbar.dart';
import 'package:mutipoint_xenius/ui/view/home/components/month_consumption.dart';
import 'package:mutipoint_xenius/ui/view/home/components/overview_balance_card_layout.dart';
import 'package:mutipoint_xenius/ui/view/home/components/today_consumption.dart';

List<Widget> layoutList = [
  OverviewBalance(),
  TodayConsumption(),
  MonthConsumtion()
];

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
    PageView(optionStyle: optionStyle),
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

class PageView extends StatefulWidget {
  const PageView({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  _PageViewState createState() => _PageViewState();
}

class _PageViewState extends State<PageView> {
  int _current = 0;

  final List<Widget> imageSliders = layoutList
      .map(
        (item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                autoPlay: true,
                height: MediaQuery.of(context).size.height * 0.3,
                viewportFraction: 1,
                enlargeCenterPage: false,
                pauseAutoPlayOnTouch: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: layoutList.map((url) {
                int index = layoutList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            Text(
              'Index 1: Recharge',
              style: widget.optionStyle,
            ),
            Text(
              'Index 2: Report',
              style: widget.optionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
