import 'package:coronavirus_app/my_const/COLOR_CONST.dart';
import 'package:coronavirus_app/presentation/common_widgets/widget_spacer.dart';
import 'package:coronavirus_app/presentation/common_widgets/widget_toolbar.dart';
import 'package:coronavirus_app/screen/home/widget_build_body.dart';
import 'package:coronavirus_app/screen/home/widget_build_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: COLOR_CONST.HOME_BACKGROUND,
        child: ListView(
          children: <Widget>[
            WidgetToolbar(
              padding: const EdgeInsets.only(left: 20, top: 20),
            ),
            WidgetBodyTotal(),
            WidgetBuildChart(),
          ],
        ),
      ),
    );
  }
}
