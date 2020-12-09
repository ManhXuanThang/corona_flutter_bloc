import 'package:flutter/cupertino.dart';

class AppConfig extends InheritedWidget {
  final String appName;
  final String flavorName;
  final String initialRoute;

  AppConfig({
    @required this.appName,
    @required this.flavorName,
    @required this.initialRoute,
    @required Widget child,
  }) : super(child: child);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
