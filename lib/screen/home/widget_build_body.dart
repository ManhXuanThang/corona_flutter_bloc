import 'package:coronavirus_app/my_const/COLOR_CONST.dart';
import 'package:coronavirus_app/my_const/FONT_CONST.dart';
import 'package:coronavirus_app/presentation/common_widgets/widget_spacer.dart';
import 'package:coronavirus_app/presentation/customeui/svg_image.dart';
import 'package:flutter/cupertino.dart';

class WidgetBodyTotal extends StatelessWidget {
  List<_ItemTotal> items = [
    _ItemTotal("Total Affected", "82,026", "15,45%"),
    _ItemTotal("Total Affected", "82,026", "15,45%"),
    _ItemTotal("Total Affected", "82,026", "15,45%")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
      child: _buildListTotal(),
    );
  }

  _buildListTotal() {
    return Container(
      height: 416,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            var item = items[index];
            return _WidgetBuildItemTotal(item);
          },
          separatorBuilder: (context, index) {
            return WidgetSpacer(
              height: 14,
            );
          },
          physics: BouncingScrollPhysics(),
          itemCount: items.length,
        ),
      ),
    );
  }

}

class _WidgetBuildItemTotal extends StatelessWidget {
  _ItemTotal item;

  _WidgetBuildItemTotal(this.item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: COLOR_CONST.DEFAULT,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                item.title,
                style: FONT_CONST.REGULAR_GRAY4_12,
              ),
              WidgetSpacer(
                height: 5,
              ),
              Text(
                item.total,
                style: FONT_CONST.MEDIUM_WHITE_22,
              ),
              WidgetSpacer(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: COLOR_CONST.GREEN_HOME.withOpacity(0.18),
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: Image.asset("assets/ic_percent.png")
                    ),
                  ),
                  WidgetSpacer(width: 5,),
                  Text(
                    item.percent,
                    style: FONT_CONST.OSWALD_REGULAR_RED2_12,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemTotal {
  String title;
  String total;
  String percent;

  _ItemTotal(this.title, this.total, this.percent);
}
