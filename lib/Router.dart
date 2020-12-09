import 'package:coronavirus_app/screen/home/sc_home.dart';
import 'package:coronavirus_app/screen/search/sc_search.dart';
import 'package:coronavirus_app/screen/splash/sc_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router {
  static const String HOME = '/';
  static const String SPLASH = '/splash';
  static const String SEARCH = '/search';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case SEARCH:
        return MaterialPageRoute(builder: (_) => SearchScreen());
    }
  }
}
