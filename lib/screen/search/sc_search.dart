import 'package:coronavirus_app/model/repo/search_repository.dart';
import 'package:coronavirus_app/my_const/COLOR_CONST.dart';
import 'package:coronavirus_app/my_const/FONT_CONST.dart';
import 'package:coronavirus_app/presentation/common_widgets/widget_spacer.dart';
import 'package:coronavirus_app/screen/search/bloc/search_bloc.dart';
import 'package:coronavirus_app/screen/search/bloc/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/search_event.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<_ItemCountry> items = [
    _ItemCountry("Bigil", 84, false),
    _ItemCountry("Kaithi", 98, false),
    _ItemCountry("Asuran", 94, false),
    _ItemCountry("Sarkar", 87, false),
    _ItemCountry("Bigil", 84, false),
    _ItemCountry("Kaithi", 98, false),
    _ItemCountry("Asuran", 94, false),
    _ItemCountry("Sarkar", 87, false),
    _ItemCountry("Bigil", 84, false),
    _ItemCountry("Kaithi", 98, false),
    _ItemCountry("Asuran", 94, false),
    _ItemCountry("Sarkar", 87, false),
    _ItemCountry("Bigil", 84, false),
    _ItemCountry("Kaithi", 98, true),
    _ItemCountry("Asuran", 94, false),
    _ItemCountry("Sarkar", 87, false),
    _ItemCountry("Bigil", 84, false),
    _ItemCountry("Kaithi", 98, false),
    _ItemCountry("Asuran", 94, false),
    _ItemCountry("Sarkar", 87, false)
  ];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchBloc>(context).add(SearchLoadData());
  }

  @override
  Widget build(BuildContext context) {
    var searchReposity = RepositoryProvider.of<SearchRepository>(context);
    return BlocProvider(
      child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
        return Scaffold(
          body: BlocProvider(
            create: (context) => SearchBloc(repository: searchReposity),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bgr_search.png"),
                      fit: BoxFit.fill)),
              child: ListView(
                children: <Widget>[
                  _buildSearchWidget(),
                  WidgetSpacer(
                    height: 20,
                  ),
                  _buildListSearch(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  _buildSearchWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: COLOR_CONST.DEFAULT,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: TextField(
            style: FONT_CONST.MEDIUM_WHITE_16,
            maxLines: 1,
            keyboardType: TextInputType.text,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: FONT_CONST.REGULAR_GRAY1_12,
                suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: COLOR_CONST.GRAY1_50,
                    ),
                    onPressed: () {})),
          ),
        ),
      ),
    );
  }

  _buildListSearch() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = items[index];
        return _WidgetBuildCountry(item);
      },
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
    );
  }
}

class _WidgetBuildCountry extends StatelessWidget {
  _ItemCountry item;
  Color isSelected = Colors.transparent;
  TextStyle isTextSelected = FONT_CONST.REGULAR_GRAY1_12;

  _WidgetBuildCountry(this.item);

  @override
  Widget build(BuildContext context) {
    if (item.isSelected) {
      isSelected = COLOR_CONST.DEFAULT;
      isTextSelected = FONT_CONST.OSWALD_REGULAR_RED2;
    }
    return GestureDetector(
      child: Container(
        height: 45,
        decoration: BoxDecoration(color: isSelected),
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 30),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  item.countryName,
                  style: isTextSelected,
                ),
                Text(
                  item.numberForCountry.toString(),
                  style: isTextSelected,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ItemCountry {
  String countryName;
  int numberForCountry;
  bool isSelected;

  _ItemCountry(this.countryName, this.numberForCountry, this.isSelected);
}
