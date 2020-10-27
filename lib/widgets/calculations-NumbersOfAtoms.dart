import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'localization.dart';

var radioButtons = AutoSizeGroup();
bool radioButtonMass = true;
bool radioButtonNumbers = true;

// ignore: camel_case_types
class NumbersOfAtoms extends StatefulWidget {
  @override
  _NumbersOfAtomsState createState() => _NumbersOfAtomsState();
}

// ignore: camel_case_types
class _NumbersOfAtomsState extends State<NumbersOfAtoms> {
  String elementName = 'Iron';
  int elementMolar = 6;

  void restart() {
    setState(() {});
  }

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
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .01,
                        right: MediaQuery.of(context).size.width * .1,
                        left: MediaQuery.of(context).size.width * .1),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: AutoSizeText(
                        'Select an element:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .12,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  FutureBuilder(
                    future: Future.delayed(Duration(seconds: 5)),
                    builder: (c, s) {
                      return FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('lib/elements.json'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            var elementList =
                                json.decode(snapshot.data.toString());
                            final listElements = <Widget>[];
                            listElements.add(new Container(
                              width: MediaQuery.of(context).size.width * .05,
                            ));
                            for (var index = 0;
                                index < elementList.length;
                                index++) {
                              listElements.add(new StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      elementName = elementList[index][
                                          AppLocalizations.of(context)
                                              .translate('key')];
                                    });
                                    restart();
                                    print(elementList[index][
                                        AppLocalizations.of(context)
                                            .translate('key')]);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          .05,
                                      right: MediaQuery.of(context).size.width *
                                          .05,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              .0,
                                    ),
                                    decoration: new BoxDecoration(
                                      color: Color(
                                          int.parse(elementList[index]["m1"])),
                                      borderRadius: new BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    child: Tooltip(
                                      message: elementList[index][
                                          AppLocalizations.of(context)
                                              .translate('key')],
                                      child: Column(
                                        //crossAxisAlignment: CrossAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          new Align(
                                            alignment: Alignment.topLeft,
                                            child: new Padding(
                                              padding: EdgeInsets.only(
                                                top: (MediaQuery.of(context)
                                                            .size
                                                            .height +
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width) /
                                                    2 *
                                                    .02,
                                                left: (MediaQuery.of(context)
                                                            .size
                                                            .height +
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width) /
                                                    2 *
                                                    .04,
                                              ),
                                              child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  new Text(
                                                    elementList[index]["number"]
                                                        .toString(),
                                                    textAlign: TextAlign.left,
                                                    style: new TextStyle(
                                                      shadows: <Shadow>[
                                                        Shadow(
                                                          offset:
                                                              Offset(2.0, 2.0),
                                                          blurRadius: 8.0,
                                                          color: Color.fromARGB(
                                                              255, 0, 0, 0),
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .05,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: (MediaQuery.of(context)
                                                            .size
                                                            .height +
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width) /
                                                    2 *
                                                    .04,
                                                left: (MediaQuery.of(context)
                                                            .size
                                                            .height +
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width) /
                                                    2 *
                                                    .04,
                                                right: (MediaQuery.of(context)
                                                            .size
                                                            .height +
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width) /
                                                    2 *
                                                    .04),
                                            child: new Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                elementList[index]["element"],
                                                style: TextStyle(
                                                  shadows: <Shadow>[
                                                    Shadow(
                                                      offset: Offset(2.0, 2.0),
                                                      blurRadius: 8.0,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                    ),
                                                  ],
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: (MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .height +
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width) /
                                                      2 *
                                                      .07,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }));
                            }

                            listElements.add(new Container(
                              width: MediaQuery.of(context).size.width * .05,
                            ));

                            return new Tooltip(
                              message: 'Select an element.',
                              child: new SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: listElements),
                              ),
                            );
                          } else {
                            return Container(
                              width: MediaQuery.of(context).size.width * .3,
                              child: SleekCircularSlider(
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
                                      Color(0xfff22447),
                                      Color(0xffb80733),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .01,
                        right: MediaQuery.of(context).size.width * .1,
                        left: MediaQuery.of(context).size.width * .1),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: AutoSizeText(
                        'Numbers of Atoms',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .12,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .01,
                        right: MediaQuery.of(context).size.width * .1,
                        left: MediaQuery.of(context).size.width * .1),
                    child: Container(
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
                            RadioListTile(
                              title: AutoSizeText('Mass of the body', style: TextStyle(color: Colors.white,
                                fontWeight:
                                FontWeight.bold,
                                fontSize: (MediaQuery.of(
                                    context)
                                    .size
                                    .height +
                                    MediaQuery.of(
                                        context)
                                        .size
                                        .width) /
                                    2 *
                                    .05,),
                                maxLines: 1,
                              group: radioButtons,),
                              value: radioButtonMass,
                              onChanged: (val) {
                                setState(() {
                                  debugPrint('VAL = $val');
                                  //_currentTimeValue = val;
                                });
                              },
                            ),
                            RadioListTile(
                              activeColor: Colors.white,
                              title: AutoSizeText('Numbers of atoms', style: TextStyle(color: Colors.white,
                                  fontWeight:
                                  FontWeight.bold,
                                  fontSize: (MediaQuery.of(
                                      context)
                                      .size
                                      .height +
                                      MediaQuery.of(
                                          context)
                                          .size
                                          .width) /
                                      2 *
                                      .05,),
                              maxLines: 1,
                                group: radioButtons,
                              ),
                              value: radioButtonNumbers,
                              onChanged: (val) {
                                setState(() {
                                  debugPrint('VAL = $val');
                                  //_currentTimeValue = val;
                                });
                              },
                            ),
                            AutoSizeText(
                              'Molar mass: ' +
                                  elementMolar.toString() +
                                  'g/mol',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                //height: MediaQuery.of(context).size.width * .0014,
                                fontSize:
                                    MediaQuery.of(context).size.width * .09,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              'Element: ' + elementName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                //height: MediaQuery.of(context).size.width * .0014,
                                fontSize:
                                    MediaQuery.of(context).size.width * .09,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              'There are 16.00000 ' +
                                  elementName +
                                  ' atoms in 15g ' +
                                  elementName +
                                  '.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                //height: MediaQuery.of(context).size.width * .0014,
                                fontSize:
                                    MediaQuery.of(context).size.width * .09,
                                color: Colors.white,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
