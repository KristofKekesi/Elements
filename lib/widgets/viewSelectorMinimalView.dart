import 'dart:convert';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
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

    return new FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('lib/elements.json'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var elementList = json.decode(snapshot.data.toString());
              final listElements = <Widget>[];
              for (var index = 0; index < elementList.length; index++) {
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
                                name: elementList[index][
                                    AppLocalizations.of(context)
                                        .translate("key")],
                                symbol: elementList[index]["element"],
                                number: elementList[index]["number"],
                                consistency: elementList[index]["consistency"],
                                discovery: elementList[index]["discovery"],
                                electronnegativity: elementList[index]
                                    ["electronnegativity"],
                                block: elementList[index]["block"],
                                weight: elementList[index]["weight"],
                                radioactivity: elementList[index]
                                    ["radioactivity"],
                                gamma: elementList[index]["gamma"],
                                beta: elementList[index]["beta"],
                                alpha: elementList[index]["alpha"],
                                multipleRadiationEmitters: elementList[index]
                                    ["multipleRadiationEmitters"],
                                type: elementList[index]["type"],
                                isotopeNum: elementList[index]["isotopeNum"],
                                isotopesSrc: elementList[index]["isotopesSrc"],
                                chargedComponents: elementList[index]
                                    ["chargedComponent"],
                                neutron: elementList[index]["neutron"],
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
                        decoration: new BoxDecoration(
                            color: Color(int.parse(elementList[index]["m1"])),
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
                        child: new Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Align(
                              alignment: Alignment.center,
                              child: new Text(
                                elementList[index]["element"],
                                textAlign: TextAlign.left,
                                style: new TextStyle(
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
                return Container(
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
                  ),
                );
              } else {
                return Container(
                  decoration: BoxDecoration(color: Color(0xffffffff)),
                  child: SizedBox.expand(
                    child: new Tooltip(
                      message: AppLocalizations.of(context)
                          .translate("moreAboutElement"),
                      child:
                          SizedBox.expand(
                            child: Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .02, right: MediaQuery.of(context).size.width * .02),
                              child: NotificationListener<
                                  OverscrollIndicatorNotification>(
                                // ignore: missing_return
                                onNotification: (OverscrollIndicatorNotification
                                    overscroll) {
                                  overscroll.disallowGlow();
                                },
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
                                                  style: new TextStyle(
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
                    ),
                );
              }
            } else {
              return Center(child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  spinnerMode: true,
                  size: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      2 *
                      .4,
                  customColors: CustomSliderColors(
                    trackColor: Color(0x00000000),
                    hideShadow: true,
                    progressBarColors: <Color>[
                      Color(0xff62a39c),
                      Color(0xff13547a),
                    ],
                  ),
                ),),
              );
            }
          },
    );
  }
}
