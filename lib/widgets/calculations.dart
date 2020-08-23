import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:elements_rework/widgets/calculations-NumbersOfAtoms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:elements_rework/widgets/localization.dart';

var modes = AutoSizeGroup();

String percentageModifier(double value) {
  final roundedValue = value.toStringAsFixed(2).toString();
  return roundedValue;
}

String percentageModifierNull(double value) {
  final roundedValue = value.toStringAsFixed(0).toString();
  return roundedValue;
}

// ignore: camel_case_types
class calculations extends StatefulWidget {
  @override
  _calculationsState createState() => _calculationsState();
}

// ignore: camel_case_types
class _calculationsState extends State<calculations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .1,
                      right: MediaQuery.of(context).size.width * .25,
                      top: MediaQuery.of(context).size.height * .02,
                      bottom: MediaQuery.of(context).size.height * .02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Tooltip(
                          message:
                              AppLocalizations.of(context).translate("back"),
                          child: Image(
                              image: AssetImage("lib/icons/left_500.png"),
                              height: MediaQuery.of(context).size.width * .105,
                              width: MediaQuery.of(context).size.width * .105),
                        ),
                      ),
                      Expanded(
                        child: AutoSizeText(
                          " " +
                              AppLocalizations.of(context)
                                  .translate('titleCalculations'),
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.width * .12,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .01,
                    right: MediaQuery.of(context).size.width * .1,
                    left: MediaQuery.of(context).size.width * .1),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Modes',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .12,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xfff22447),
                              Color(0xffb80733),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .02),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .04,
                            right: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .04,
                            top: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .03,
                            bottom: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NumbersOfAtoms()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Tooltip(
                                  message: AppLocalizations.of(context)
                                      .translate('electronnegativitySelector'),
                                  child: AutoSizeText(
                                    'Numbers of atoms',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    group: modes,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Tooltip(
                                  message: AppLocalizations.of(context)
                                      .translate('typesSelector'),
                                  child: AutoSizeText(
                                    'Weight percent',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    group: modes,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}