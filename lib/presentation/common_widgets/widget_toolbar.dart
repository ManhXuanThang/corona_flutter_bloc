import 'package:coronavirus_app/presentation/customeui/svg_image.dart';
import 'package:flutter/cupertino.dart';

class WidgetToolbar extends StatelessWidget {
  EdgeInsets padding;

  WidgetToolbar({this.padding = const EdgeInsets.only(left: 12, right: 10)});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Padding(
              padding: padding,
              child: MySvgImage(
                path: 'assets/humburger.svg',
                width: 19,
                height: 16,
              ),
            )),
      ],
    );
  }
}
