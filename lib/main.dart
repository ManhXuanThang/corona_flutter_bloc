import 'package:coronavirus_app/Router.dart';
import 'package:coronavirus_app/app_config.dart';
import 'package:coronavirus_app/my_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppConfig(
      appName: "",
      flavorName: "dev",
      initialRoute: Router.SPLASH,
      child: MyApp.runWidget(),
    ));
