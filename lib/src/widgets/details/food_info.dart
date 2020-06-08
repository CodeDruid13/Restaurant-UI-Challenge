import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:ui';

import 'package:restaurant/src/core/models/foods_model.dart';
import 'package:restaurant/src/core/utils/constants.dart';

class FoodsInfo extends StatelessWidget {
  final FoodsModel foodsModel;
  FoodsInfo({this.foodsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 2),
              Expanded(
                child: Text(
                  foodsModel.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                  softWrap: true,
                  style: TextStyle(
                      color: Constants.darkPrimary,
                      fontFamily: Constants.dancingScript,
                      fontSize: 40),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            foodsModel.description,
            style: TextStyle(
                color: Constants.darkPrimary,
                fontFamily: Constants.nunito,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
