import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant/src/core/models/foods_model.dart';
import 'package:restaurant/src/core/utils/constants.dart';
import 'package:stretchy_header/stretchy_header.dart';
import 'dart:ui';

HeaderData buildHeaderData(BuildContext context, FoodsModel foodsModel) {
  return HeaderData(
    highlightHeaderAlignment: HighlightHeaderAlignment.top,
    highlightHeader: Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: new Container(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  width: 48.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constants.darkPrimary),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: new Container(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  width: 48.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constants.darkPrimary),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Feather.more_vertical,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    blurContent: false,
    headerHeight: 400,
    overlay: Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 335, left: 65, right: 65),
              decoration: BoxDecoration(
                color: Constants.yellow,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 10),
                  RatingBar(
                    initialRating: foodsModel.rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 14,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Constants.lightBackground,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    '${foodsModel.rating}',
                    style: TextStyle(
                        color: Constants.lightBackground,
                        fontFamily: Constants.nunito,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'SEE REVIEWS',
                    style: TextStyle(
                        color: Constants.lightBackground,
                        fontFamily: Constants.nunito,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 10),
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Constants.lightBackground,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              height: 25,
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () {},
              ))
        ],
      ),
    ),
    header: Image.asset(foodsModel.image, fit: BoxFit.cover),
  );
}
