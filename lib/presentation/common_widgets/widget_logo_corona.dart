import 'package:coronavirus_app/my_const/COLOR_CONST.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetLogoCorona extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logo.svg',
      color: COLOR_CONST.WHITE,
    );
  }
}
