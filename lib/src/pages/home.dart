import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:restaurant/src/core/models/foods_model.dart';
import 'package:restaurant/src/core/utils/constants.dart';
import 'package:restaurant/src/widgets/meals_ui.dart';
import 'package:restaurant/src/widgets/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  int selectedIdx = 0;

  final List<String> categories = [
    'Recommended',
    'Elevenses',
    'Brunch',
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Padding(
                padding: EdgeInsets.only(top: 50, right: 30, left: 14),
                child: Search(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(top: 20, bottom: 15),
              height: 60.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIdx = index;
                      });
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                            color: index == selectedIdx
                                ? Constants.darkpink
                                : Theme.of(context).textTheme.caption.color,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: Constants.nunito),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 14),
              child: DestinationScroll(
                foodsmodel: foodsdata,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
