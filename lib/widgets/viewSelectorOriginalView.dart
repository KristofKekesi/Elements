import 'dart:convert';
import 'dart:ui';

import 'package:elements_rework/loadJsonData.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'elementPopup.dart';

int tableWidthUnit = 18;
int tableHeightUnit = 7;

// ignore: camel_case_types
class originalView extends StatelessWidget {
  @required
  final List passedElements;

  const originalView({
    Key key,
    this.passedElements,
  }) : super(key: key);

  @override
  Widget build(context) {
    int pass = 0;

    final listElements = <Widget>[];
    for (var index = 0; index < elementData.length; index++) {
      if (passedElements.contains(index) == true) {
        pass++;

        listElements.add(
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return ElementPopup(
                      context: context,
                      name: elementData[index][AppLocalizations.of(context)
                          .translate("key")],
                      symbol: elementData[index]["element"],
                      number: elementData[index]["number"],
                      consistency: elementData[index]["consistency"],
                      discovery: elementData[index]["discovery"],
                      electronegativity: elementData[index]["electronegativity"],
                      block: elementData[index]["block"],
                      weight: elementData[index]["weight"],
                      radioactivity: elementData[index]["radioactivity"],
                      gamma: elementData[index]["gamma"],
                      beta: elementData[index]["beta"],
                      alpha: elementData[index]["alpha"],
                      multipleRadiationEmitters: elementData[index]["multipleRadiationEmitters"],
                      type: elementData[index]["type"],
                      isotopeNum: elementData[index]["isotopeNum"],
                      isotopesSrc: elementData[index]["isotopesSrc"],
                      chargedComponents: elementData[index]["chargedComponent"],
                      neutron: elementData[index]["neutron"],
                    );
                  }
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: (MediaQuery
                      .of(context)
                      .size
                      .height +
                      MediaQuery
                          .of(context)
                          .size
                          .width) /
                      2 *
                      .025,
                  right: (MediaQuery
                      .of(context)
                      .size
                      .height +
                      MediaQuery
                          .of(context)
                          .size
                          .width) /
                      2 *
                      .025,
                  bottom: (MediaQuery
                      .of(context)
                      .size
                      .height +
                      MediaQuery
                          .of(context)
                          .size
                          .width) /
                      2 *
                      .05),
              decoration: BoxDecoration(
                  color: Color(int.parse(elementData[index]["m1"])),
                  borderRadius: BorderRadius.circular(
                      (MediaQuery
                          .of(context)
                          .size
                          .height +
                          MediaQuery
                              .of(context)
                              .size
                              .width) /
                          2 *
                          .02)),
              height: (MediaQuery
                  .of(context)
                  .size
                  .height +
                  MediaQuery
                      .of(context)
                      .size
                      .width) /
                  2 *
                  .13,
              width: (MediaQuery
                  .of(context)
                  .size
                  .width +
                  MediaQuery
                      .of(context)
                      .size
                      .height) /
                  2 *
                  .13,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      elementData[index]["element"],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: (MediaQuery
                            .of(context)
                            .size
                            .height +
                            MediaQuery
                                .of(context)
                                .size
                                .width) /
                            2 *
                            .06,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

    if (pass == 0) {
      return Container(
        width: MediaQuery
            .of(context)
            .size
            .width * .8,
        height: MediaQuery
            .of(context)
            .size
            .height * .5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppLocalizations.of(context).translate('noResTitle'),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery
                      .of(context)
                      .size
                      .width * .1),
            ),
            Text(
              AppLocalizations.of(context).translate('noResContent'),
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black45,
                  fontSize: MediaQuery
                      .of(context)
                      .size
                      .width * .06),
            ),
          ],
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(color: Color(0xffffffff)),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery
                  .of(context)
                  .size
                  .height * .02,
              bottom: MediaQuery
                  .of(context)
                  .size
                  .height * .02),
          child: Tooltip(
            message: AppLocalizations.of(context)
                .translate("moreAboutElement"),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: Padding(
                    padding: EdgeInsets.only(left: 7, right: 7),
                    child: ListView(
                      children: <Widget>[
                        Container(
                            height:
                            MediaQuery
                                .of(context)
                                .size
                                .height * .04),
                        Column(
                          children: <Widget>[
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 0,
                              runSpacing: 0,
                              children: listElements,
                            ),
                          ],
                        ),
                        Container(
                            height:
                            MediaQuery
                                .of(context)
                                .size
                                .height * .01),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -1,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .05,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -1,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .07,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}