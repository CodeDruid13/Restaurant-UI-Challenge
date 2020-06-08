import 'package:flutter/material.dart';
import 'package:restaurant/src/core/utils/constants.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Menu",
                      style: TextStyle(
                          fontSize: 40,
                          color: Constants.darkPrimary,
                          fontWeight: FontWeight.w600,
                          fontFamily: Constants.dancingScript)
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
