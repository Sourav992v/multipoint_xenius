import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mp_chart/mp/chart/pie_chart.dart';
import 'package:mp_chart/mp/controller/pie_chart_controller.dart';
import 'package:mp_chart/mp/core/adapter_android_mp.dart';
import 'package:mp_chart/mp/core/animator.dart';
import 'package:mp_chart/mp/core/common_interfaces.dart';
import 'package:mp_chart/mp/core/data/pie_data.dart';
import 'package:mp_chart/mp/core/data_set/pie_data_set.dart';
import 'package:mp_chart/mp/core/description.dart';
import 'package:mp_chart/mp/core/entry/pie_entry.dart';

import 'package:mp_chart/mp/core/enums/legend_horizontal_alignment.dart';
import 'package:mp_chart/mp/core/enums/legend_orientation.dart';
import 'package:mp_chart/mp/core/enums/legend_vertical_alignment.dart';
import 'package:mp_chart/mp/core/enums/value_position.dart';
import 'package:mp_chart/mp/core/highlight/highlight.dart';
import 'package:mp_chart/mp/core/render/pie_chart_renderer.dart';
import 'package:mp_chart/mp/core/utils/color_utils.dart';
import 'package:mp_chart/mp/core/value_formatter/percent_formatter.dart';
import 'package:mutipoint_xenius/constants.dart';

List<String> pieChartListText = ['Today', 'Month'];

class PiechartRecyclerView extends StatelessWidget {
  const PiechartRecyclerView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 400.0,
        width: 400.0,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: Colors.white,
          shadowColor: Colors.white24,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => Divider(
              thickness: 2.0,
            ),
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Today"),
                subtitle: PieChartOverView(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class PieChartOverView extends StatefulWidget {
  @override
  _PieChartOverViewState createState() => _PieChartOverViewState();
}

class _PieChartOverViewState extends State<PieChartOverView> {
  PieChartController controller;
  var random = Random(1);
  int _count = 4;
  double _range = 100.0;

  @override
  void initState() {
    _initController();
    _initPieData(_count, _range);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _initPieChart(),
            )
          ],
        ),
      ),
    );
  }

  final List<String> PARTIES = List()
    ..add("Party A")
    ..add("Party B")
    ..add("Party C")
    ..add("Party D")
    ..add("Party E")
    ..add("Party F")
    ..add("Party G")
    ..add("Party H")
    ..add("Party I")
    ..add("Party J")
    ..add("Party K")
    ..add("Party L")
    ..add("Party M")
    ..add("Party N")
    ..add("Party O")
    ..add("Party P")
    ..add("Party Q")
    ..add("Party R")
    ..add("Party S")
    ..add("Party T")
    ..add("Party U")
    ..add("Party V")
    ..add("Party W")
    ..add("Party X")
    ..add("Party Y")
    ..add("Party Z");

  void _initController() {
    var desc = Description()..enabled = false;

    controller = PieChartController(
        legendSettingFunction: (legend, controller) {
          _formatter.setPieChartPainter(controller);
          legend
            ..verticalAlignment = (LegendVerticalAlignment.BOTTOM)
            ..horizontalAlignment = (LegendHorizontalAlignment.RIGHT)
            ..orientation = (LegendOrientation.HORIZONTAL)
            ..drawInside = (false)
            ..enabled = (true);
        },
        rendererSettingFunction: (renderer) {
          (renderer as PieChartRenderer)
            ..setHoleColor(ColorUtils.WHITE)
            ..setHoleColor(ColorUtils.WHITE)
            ..setTransparentCircleColor(ColorUtils.WHITE)
            ..setTransparentCircleAlpha(110);
        },
        rotateEnabled: true,
        drawHole: true,
        drawCenterText: true,
        extraLeftOffset: 20,
        extraTopOffset: 0,
        extraRightOffset: 20,
        extraBottomOffset: 0,
        usePercentValues: true,
        centerText: "value lines",
        holeRadiusPercent: 58,
        transparentCircleRadiusPercent: 61,
        highLightPerTapEnabled: false,
        description: desc);
  }

  PercentFormatter _formatter = PercentFormatter();

  void _initPieData(int count, double range) async {
    List<PieEntry> entries = List();

    for (int i = 0; i < count; i++) {
      entries.add(PieEntry(
        value: (random.nextDouble() * range) + range / 5,
        label: PARTIES[i % PARTIES.length],
      ));
    }

    PieDataSet dataSet = PieDataSet(entries, "Election Results");
    dataSet.setSliceSpace(3);
    dataSet.setSelectionShift(5);

    // add a lot of colors
    List<Color> colors = List();
    for (Color c in ColorUtils.VORDIPLOM_COLORS) colors.add(c);
    for (Color c in ColorUtils.JOYFUL_COLORS) colors.add(c);
    for (Color c in ColorUtils.COLORFUL_COLORS) colors.add(c);
    for (Color c in ColorUtils.LIBERTY_COLORS) colors.add(c);
    for (Color c in ColorUtils.PASTEL_COLORS) colors.add(c);
    colors.add(ColorUtils.HOLO_BLUE);
    dataSet.setColors1(colors);
    dataSet.setSelectionShift(0);

    dataSet.setValueLinePart1OffsetPercentage(80.0);
    dataSet.setValueLinePart1Length(0.2);
    dataSet.setValueLinePart2Length(0.4);

    dataSet.setYValuePosition(ValuePosition.OUTSIDE_SLICE);

    controller.data = PieData(dataSet)
      ..setValueFormatter(_formatter)
      ..setValueTextSize(11)
      ..setValueTextColor(ColorUtils.BLACK)
      ..setValueTypeface(
          TypeFace(fontFamily: "Lato", fontWeight: FontWeight.w400));

    setState(() {});
  }

  Widget _initPieChart() {
    var pieChart = PieChart(controller);
    controller.animator
      ..reset()
      ..animateY2(1400, Easing.EaseInOutQuad);
    return pieChart;
  }
}
