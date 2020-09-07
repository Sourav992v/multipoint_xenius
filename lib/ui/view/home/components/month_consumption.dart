import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';

class MonthConsumtion extends StatelessWidget {
  static const String id = 'MonthConsumtion';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.all(16.0),
        color: Colors.white24,
        elevation: 5.0,
        child: Column(
          children: [
            TodayConsumptionCard(),
          ],
        ),
      ),
    );
  }
}

class TodayConsumptionCard extends StatelessWidget {
  const TodayConsumptionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.only(top: 8.0, bottom: 4.0, left: 0.0, right: 0.0),
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Month Consumption',
              style: kLabelTextStyle,
            ),
            SizedBox(
              height: 16.0,
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              color: kTextBackgroundGrey,
              margin: EdgeInsets.only(
                  top: 12.0, bottom: 4.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Text(
                  'Grid',
                  style: kSubLabelTextStyle,
                ),
                trailing: Text(
                  '1234.0',
                  style: kValueTextStyle,
                ),
              ),
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              color: kTextBackgroundGrey,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 4.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Text(
                  'DG',
                  style: kSubLabelTextStyle,
                ),
                trailing: Text(
                  '545.0',
                  style: kValueTextStyle,
                ),
              ),
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              color: kTextBackgroundGrey,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 4.0, left: 16.0, right: 16.0),
              child: ListTile(
                  leading: Text(
                    'Fixed\nCharges',
                    style: kSubLabelTextStyle,
                  ),
                  trailing: Text(
                    '54.0',
                    style: kValueTextStyle,
                  )),
            ),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              color: kTextBackgroundGrey,
              margin: EdgeInsets.only(
                  top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
              child: ListTile(
                leading: Text(
                  'Total',
                  style: kSubLabelTextStyle,
                ),
                trailing: Text(
                  '2454.0',
                  style: kValueTextStyle,
                ),
              ),
            ),
            Text(
              'Values in INR',
              style: kSubValueTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
