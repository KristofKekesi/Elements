import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'localization.dart';

// ignore: camel_case_types
class preferenciesWindow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        Navigator.of(context).pop();
                      },
                      child: Tooltip(
                        message: AppLocalizations.of(context).translate("back"),
                        child: Image(
                            image: AssetImage("lib/icons/left_500.png"),
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
                      ' ' + AppLocalizations.of(context).translate('preferencies'),
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                              2 *
                              .080,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          ],
        ),
      ),
    );
  }
}