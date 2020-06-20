import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_chem/widgets/localization.dart';
import 'package:flutter_chem/widgets/resultWindow.dart';

// ignore: camel_case_types
class landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      2 *
                      .05,
                  top: 20),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Tooltip(
                      message:
                          "" + AppLocalizations.of(context).translate("menu"),
                      child: Image(
                          image: AssetImage("lib/icons/right_500.png"),
                          height: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              2 *
                              .09,
                          width: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              2 *
                              .09),
                    ),
                  ),
                  Text(
                    ' ' + AppLocalizations.of(context).translate('title'),
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .095,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    2 *
                    .03,
                bottom: 20,
                right: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    2 *
                    .05),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    'Types',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1,
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .08,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => searchResults(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 20,
                  right: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                      2 *
                      .05),
              child: Container(
                width: (MediaQuery.of(context).size.width +
                    MediaQuery.of(context).size.height) /
                    2 *
                    .30,
                height: (MediaQuery.of(context).size.height +
                    MediaQuery.of(context).size.width) /
                    2 *
                    .13,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.deepOrangeAccent,
                    Colors.orangeAccent,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(
                      (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                          2 *
                          .02),
                ),
                child: Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                            2 *
                            .06),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
