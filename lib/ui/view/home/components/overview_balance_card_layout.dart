import 'package:flutter/material.dart';
import 'package:mutipoint_xenius/constants.dart';

class OverviewBalance extends StatelessWidget {
  static const String id = 'OverviewBalance';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.all(12.0),
        color: Colors.white24,
        elevation: 5.0,
        child: Column(
          children: [
            GridBalanceCard(),
            SizedBox(
              height: 8.0,
            ),
            DGBalanceCard(),
          ],
        ),
      ),
    );
  }
}

class GridBalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.only(top: 0.0, bottom: 4.0, left: 0.0, right: 0.0),
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grid',
                  style: kLabelTextStyle,
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                  color: kColorAccentRed,
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start Time',
                  style: kSubLabelTextStyle,
                ),
                Text(
                  '23-44-44 44 67 98',
                  style: kSubValueTextStyle,
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Consumption',
                  style: kSubLabelTextStyle,
                ),
                Text(
                  '41589 kWh',
                  style: kSubValueTextStyle,
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: kSubLabelTextStyle,
                ),
                Text(
                  '41589',
                  style: kSubValueTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DGBalanceCard extends StatelessWidget {
  const DGBalanceCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.only(top: 0.0, bottom: 4.0, left: 0.0, right: 0.0),
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DG',
                  style: kLabelTextStyle,
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                  color: kColorAccentRed,
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start Time',
                  style: kSubLabelTextStyle,
                ),
                Text(
                  '23-44-44 44 67 98',
                  style: kSubValueTextStyle,
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Consumption',
                  style: kSubLabelTextStyle,
                ),
                Text(
                  '41589 kWh',
                  style: kSubValueTextStyle,
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: kSubLabelTextStyle,
                ),
                Text(
                  '41589',
                  style: kSubValueTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
