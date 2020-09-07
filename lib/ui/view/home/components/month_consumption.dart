import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';

class MonthConsumtion extends StatelessWidget {
  static const String id = 'MonthConsumtion';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Colors.white24,
        elevation: 5.0,
        child: Column(
          children: [
            MonthConsumptionCard(),
          ],
        ),
      ),
    );
  }
}

class MonthConsumptionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Month Consumption',
              style: kLabelTextStyle,
            ),
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
            margin:
                EdgeInsets.only(top: 2.0, bottom: 4.0, left: 16.0, right: 16.0),
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
            margin:
                EdgeInsets.only(top: 2.0, bottom: 4.0, left: 16.0, right: 16.0),
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
            margin:
                EdgeInsets.only(top: 2.0, bottom: 8.0, left: 16.0, right: 16.0),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Values in INR',
              style: kSubValueTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
