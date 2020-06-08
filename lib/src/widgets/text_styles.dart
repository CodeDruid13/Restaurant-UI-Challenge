import 'package:flutter/material.dart';
import 'package:restaurant/src/core/utils/constants.dart';

class ThemeText {
  static const TextStyle body = TextStyle(
      fontFamily: Constants.nunito,
      color: Colors.black,
      fontSize: 40,
      height: 0.5,
      fontWeight: FontWeight.w600);
  static const TextStyle bottomBar = TextStyle(
      fontFamily: Constants.nunito, fontSize: 1, fontWeight: FontWeight.w400);

  static const TextStyle bottomBardeselected = TextStyle(
      fontFamily: Constants.nunito,
      fontSize: 1,
      color: Colors.blueGrey,
      fontWeight: FontWeight.w400);

  static const TextStyle title = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(228, 105, 54, 1),
  );

  static const TextStyle heading = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(228, 105, 54, 1),
  );
}
