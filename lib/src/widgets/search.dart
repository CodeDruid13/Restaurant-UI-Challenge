import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:restaurant/src/core/utils/constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () => {},
              iconSize: 25,
              color: Theme.of(context).textTheme.caption.color,
              icon: Icon(Icons.grain),
            ),
            IconButton(
              onPressed: () => {},
              iconSize: 25,
              color: Theme.of(context).textTheme.caption.color,
              icon: Icon(Feather.search),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(left: 14),
          child: Row(
            children: <Widget>[
              Text(
                Constants.appName,
                style: TextStyle(
                    color: Constants.darkPrimary,
                    fontFamily: Constants.dancingScript,
                    fontSize: 60,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
