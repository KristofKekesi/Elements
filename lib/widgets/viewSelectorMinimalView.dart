import 'dart:convert';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:elements_rework/loadJsonData.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'elementPopup.dart';

// ignore: camel_case_types
class minimalView extends StatelessWidget {
  @required
  final List passedElements;

  const minimalView({
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
                                name: elementData[index][
                                    AppLocalizations.of(context)
                                        .translate("key")],
                                symbol: elementData[index]["element"],
                                number: elementData[index]["number"],
                                consistency: elementData[index]["consistency"],
                                discovery: elementData[index]["discovery"],
                                electronegativity: elementData[index]
                                    ["electronegativity"],
                                block: elementData[index]["block"],
                                weight: elementData[index]["weight"],
                                radioactivity: elementData[index]
                                    ["radioactivity"],
                                gamma: elementData[index]["gamma"],
                                beta: elementData[index]["beta"],
                                alpha: elementData[index]["alpha"],
                                multipleRadiationEmitters: elementData[index]
                                    ["multipleRadiationEmitters"],
                                type: elementData[index]["type"],
                                isotopeNum: elementData[index]["isotopeNum"],
                                isotopesSrc: elementData[index]["isotopesSrc"],
                                chargedComponents: elementData[index]
                                    ["chargedComponent"],
                                neutron: elementData[index]["neutron"],
                              );
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .025,
                            right: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .025,
                            bottom: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .05),
                        decoration: BoxDecoration(
                            color: Color(int.parse(elementData[index]["m1"])),
                            borderRadius: BorderRadius.circular(
                                (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02)),
                        height: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .13,
                        width: (MediaQuery.of(context).size.width +
                                MediaQuery.of(context).size.height) /
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
                                  fontSize: (MediaQuery.of(context)
                                              .size
                                              .height +
                                          MediaQuery.of(context).size.width) /
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
                return Center(child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).translate('noResTitle'),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * .1),
                      ),
                      Text(
                        AppLocalizations.of(context).translate('noResContent'),
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black45,
                            fontSize: MediaQuery.of(context).size.width * .06),
                      ),
                    ],
                  ),),
                );
              } else {
                return Container(
                  decoration: BoxDecoration(color: Color(0xffffffff)),
                  child: SizedBox.expand(
                    child: Tooltip(
                      message: AppLocalizations.of(context)
                          .translate("moreAboutElement"),
                      child:
                          SizedBox.expand(
                            child: Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .02, right: MediaQuery.of(context).size.width * .02),
                              child: ListView(
                                  children: <Widget>[
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .04),
                                    Column(
                                      children: <Widget>[
                                        Opacity(
                                          opacity: 0,
                                          child:
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: MediaQuery.of(context).size.width * .1 - MediaQuery.of(context).size.width * .02,
                                            right: MediaQuery.of(context).size.width * .1 - MediaQuery.of(context).size.width * .02,
                                          ),
                                          child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Image(
                                                        image: AssetImage("lib/icons/left_500.png"),
                                                        height:
                                                        MediaQuery.of(context).size.width * .105,
                                                        width:
                                                        MediaQuery.of(context).size.width * .105),
                                                AutoSizeText(
                                                  " " +
                                                      AppLocalizations.of(context)
                                                          .translate('titleElements'),
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                      MediaQuery.of(context).size.width * .12,
                                                      fontWeight: FontWeight.bold),
                                                  maxLines: 1,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),),),
                                        Wrap(
                                          direction: Axis.horizontal,
                                          spacing: 0,
                                          runSpacing: 0,
                                          children: listElements,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                        left:
                                                        MediaQuery.of(context).size.width * .1,
                                                      ),
                                                      child: Container(
                                                          width: MediaQuery.of(context).size.width *
                                                              .35,
                                                          height:
                                                          MediaQuery.of(context).size.width *
                                                              .18,
                                                        ),

                                                  ),
                                                 Padding(
                                                          padding: EdgeInsets.only(
                                                            right:
                                                            MediaQuery.of(context).size.width *
                                                                .1,
                                                          ),
                                                          child: Container(
                                                            width:
                                                            MediaQuery.of(context).size.width *
                                                                .35,
                                                            height:
                                                            MediaQuery.of(context).size.width *
                                                                .18,
                                                          ),
                                                        ),
                                                ],
                                              ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .01),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ),
                );
              }
  }
}
