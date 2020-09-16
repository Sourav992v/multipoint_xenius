import 'dart:collection';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mp_chart/mp/chart/pie_chart.dart';
import 'package:mp_chart/mp/controller/pie_chart_controller.dart';
import 'package:mp_chart/mp/core/adapter_android_mp.dart';
import 'package:mp_chart/mp/core/animator.dart';

import 'package:mp_chart/mp/core/data/pie_data.dart';
import 'package:mp_chart/mp/core/data_set/pie_data_set.dart';
import 'package:mp_chart/mp/core/description.dart';
import 'package:mp_chart/mp/core/entry/pie_entry.dart';

import 'package:mp_chart/mp/core/enums/legend_horizontal_alignment.dart';
import 'package:mp_chart/mp/core/enums/legend_orientation.dart';
import 'package:mp_chart/mp/core/enums/legend_vertical_alignment.dart';
import 'package:mp_chart/mp/core/enums/value_position.dart';

import 'package:mp_chart/mp/core/render/pie_chart_renderer.dart';
import 'package:mp_chart/mp/core/utils/color_utils.dart';
import 'package:mp_chart/mp/core/value_formatter/percent_formatter.dart';
import 'package:mutipoint_xenius/business_logic/models/resource.dart';
import 'package:mutipoint_xenius/business_logic/viewmodels/home_viewmodel.dart';
import 'package:mutipoint_xenius/constants.dart';
import 'package:mutipoint_xenius/locator.dart';

List<String> pieChartListText = ['Today', 'Month'];

class PiechartRecyclerView extends StatefulWidget {
  const PiechartRecyclerView({
    Key key,
  }) : super(key: key);

  @override
  _PiechartRecyclerViewState createState() => _PiechartRecyclerViewState();
}

class _PiechartRecyclerViewState extends State<PiechartRecyclerView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 400.0,
        width: double.infinity,
        padding:
            EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
        child: SizedBox(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: Colors.white,
                shadowColor: Colors.white70,
                elevation: 5.0,
                child: ListTile(
                  title: Center(child: Text('${pieChartListText[index]}')),
                  subtitle: PieChartOverView(),
                ),
              );
            },
            shrinkWrap: true,
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

  HomeViewModel model = locator<HomeViewModel>();
  Resource resource;

  @override
  void initState() {
    _initController();

    model.getLoginResource().then((value) {
      setState(() {
        resource = value.body.resource;
      });
    });

    _initPieData(resource);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Column(
        children: <Widget>[
          Expanded(
            child: _initPieChart(),
          )
        ],
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

  void _initPieData(Resource resourceEntity) async {
    String gridUnit = "Grid " + resourceEntity.readingUnit;
    String dgUnit = "DG " + resourceEntity.readingUnit;
    double gridValue = resourceEntity.dailyGridUnit;
    double dgValue = resourceEntity.dailyDgUnit;

    double gridValueMonth = resourceEntity.monthlyGridUnit;
    double dgValueMonth = resourceEntity.monthlyDgUnit;

    List<PieEntry> entries = List();
    List<PieEntry> pieEntriesMonth = List();

    entries.add(PieEntry(
      value: gridValue,
      label: gridUnit,
    ));
    entries.add(PieEntry(
      value: dgValue,
      label: dgUnit,
    ));

    pieEntriesMonth.add(PieEntry(
      value: gridValueMonth,
      label: gridUnit,
    ));
    pieEntriesMonth.add(PieEntry(
      value: dgValueMonth,
      label: dgUnit,
    ));

    Map<String, List<PieEntry>> pieEntries = HashMap();
    pieEntries.putIfAbsent('Today', () => entries);
    pieEntries.putIfAbsent('Month', () => pieEntriesMonth);

    PieDataSet dataSet = PieDataSet(pieEntries[1], "Consumptions");
    dataSet.setSliceSpace(3);
    dataSet.setSelectionShift(5);

    // add a lot of colors
    List<Color> colors = List();
    colors.add(kColorPrimary);
    colors.add(kColorAccentRed);

    dataSet.setColors1(colors);
    dataSet.setSelectionShift(0);

    dataSet.setValueLinePart1OffsetPercentage(80.0);
    dataSet.setValueLinePart1Length(0.8);
    dataSet.setValueLinePart2Length(0.8);

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
