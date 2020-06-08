import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:restaurant/src/core/models/foods_model.dart';
import 'package:restaurant/src/core/utils/animations/horizontal_animation.dart';
import 'package:restaurant/src/core/utils/constants.dart';
import 'package:restaurant/src/pages/details.dart';
import 'package:restaurant/src/pages/menu.dart';

class DestinationScroll extends StatefulWidget {
  final List<FoodsModel> foodsmodel;
  final GestureTapCallback onTap;
  DestinationScroll({this.onTap, this.foodsmodel});
  @override
  _DestinationScrollState createState() => _DestinationScrollState();
}

class _DestinationScrollState extends State<DestinationScroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 0, left: 0, right: 0),
      padding: EdgeInsets.only(top: 0, bottom: 0),
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: widget.foodsmodel == null ? 0 : widget.foodsmodel.length,
        itemBuilder: (BuildContext context, int index) {
          FoodsModel placio = widget.foodsmodel.toList()[index];
          return HorizontalWidgetAnimator(GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return DetailsPage(
                      foodsModel: placio,
                    );
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Container(
                width: 225,
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image.asset(
                        placio.image,
                        height: 340,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 14, left: 30),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Constants.darkPrimary,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(24),
                                      bottomLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(24),
                                    ),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Details".toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
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
                                  filter: new ImageFilter.blur(
                                      sigmaX: 5.0, sigmaY: 5.0),
                                  child: new Container(
                                    padding: EdgeInsets.only(left: 0, right: 0),
                                    width: 50,
                                    height: 50,
                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Constants.pink),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                        ))
                  ],
                ),
              ),
            ),
          ));
        },
      ),
    );
  }
}
