import 'package:coronavirus_app/my_const/COLOR_CONST.dart';
import 'package:coronavirus_app/my_const/FONT_CONST.dart';
import 'package:coronavirus_app/presentation/common_widgets/widget_logo_corona.dart';
import 'package:coronavirus_app/presentation/common_widgets/widget_spacer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Router.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    openHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: COLOR_CONST.DEFAULT,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              WidgetLogoCorona(),
              WidgetSpacer(
                height: 15,
              ),
              Text(
                "Coronavirus",
                style: FONT_CONST.MEDIUM_WHITE_22,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openHome() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Router.SEARCH);
    });
  }
}
