import 'package:flutter/material.dart';
import 'package:restaurant/src/core/models/foods_model.dart';
import 'package:restaurant/src/core/utils/constants.dart';
import 'package:restaurant/src/widgets/details/food_info.dart';
import 'package:restaurant/src/widgets/details/header_data.dart';
import 'package:stretchy_header/stretchy_header.dart';
import 'dart:ui';

class DetailsPage extends StatefulWidget {
  final FoodsModel foodsModel;
  DetailsPage({this.foodsModel});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StretchyHeader.singleChild(
        headerData: buildHeaderData(context, widget.foodsModel),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FoodsInfo(foodsModel: widget.foodsModel),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(left: 14),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * .55,
                height: 55,
                decoration: BoxDecoration(
                  color: Constants.darkPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(55)),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Add to meal".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontFamily: Constants.nunito,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
            ClipOval(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: new Container(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Constants.pink),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
