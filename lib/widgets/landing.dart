import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_chem/widgets/localization.dart';
import 'package:flutter_chem/widgets/resultWindow.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

// ignore: camel_case_types
class landing extends StatefulWidget {
  @override
  _landingState createState() => _landingState();
}

// ignore: camel_case_types
class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    String percentageModifier(double value) {
      final roundedValue = value.toStringAsFixed(2).toString();
      return roundedValue;
    }

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          initialChildSize: .85,
                          maxChildSize: .85,
                          builder: (BuildContext context, scrollController) {
                            return SingleChildScrollView(
                              controller: scrollController,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .1),
                                    topRight: Radius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .1),),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: (MediaQuery.of(context)
                                          .size
                                          .height +
                                          MediaQuery.of(context)
                                              .size
                                              .width) /
                                          2 *
                                          .05, sigmaY: (MediaQuery.of(context)
                                          .size
                                          .height +
                                          MediaQuery.of(context)
                                              .size
                                              .width) /
                                          2 *
                                          .05),
                                  child: Container(
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 30, bottom: 70),
                                            child: Text(
                                              AppLocalizations.of(context)
                                                      .translate(
                                                          'electronnegativitySelector') +
                                                  ':',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
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
                                          SleekCircularSlider(
                                            initialValue: 1,
                                            min: 0,
                                            max: 4,
                                            appearance:
                                                CircularSliderAppearance(
                                                  size: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .4,
                                              infoProperties: InfoProperties(
                                                modifier: percentageModifier,
                                                topLabelStyle: TextStyle(
                                                    fontSize:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .height +
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width) /
                                                            2 *
                                                            .06,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                                mainLabelStyle: TextStyle(
                                                  fontSize: (MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .height +
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width) /
                                                      2 *
                                                      .08,
                                                  color: Colors.white,
                                                ),
                                                topLabelText:
                                                    AppLocalizations.of(context)
                                                        .translate('sliderMin'),
                                              ),
                                              customColors: CustomSliderColors(
                                                trackColor: Colors.white,
                                                hideShadow: true,
                                                progressBarColors: <Color>[
                                                  Colors.orangeAccent,
                                                  Colors.deepOrangeAccent,
                                                ],
                                              ),
                                            ),
                                            onChangeEnd: (v) {
                                              print(v.toStringAsFixed(2));
                                            },
                                          ),
                                          SleekCircularSlider(
                                            initialValue: 3,
                                            min: 0,
                                            max: 4,
                                            appearance:
                                                CircularSliderAppearance(
                                                  size: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .4,
                                              infoProperties: InfoProperties(
                                                modifier: percentageModifier,
                                                topLabelStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .height +
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width) /
                                                            2 *
                                                            .06,
                                                    color: Colors.white),
                                                mainLabelStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .height +
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width) /
                                                            2 *
                                                            .08),
                                                topLabelText:
                                                    AppLocalizations.of(context)
                                                        .translate('sliderMax'),
                                              ),
                                              customColors: CustomSliderColors(
                                                trackColor: Colors.white,
                                                hideShadow: true,
                                                progressBarColors: <Color>[
                                                  Colors.orangeAccent,
                                                  Colors.deepOrangeAccent,
                                                ],
                                              ),
                                            ),
                                            onChangeEnd: (v) {
                                              print(v.toStringAsFixed(2));
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Tooltip(
                    message: AppLocalizations.of(context)
                        .translate('electronnegativitySelector'),
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('electronnegativityMinSelector'),
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
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          initialChildSize: .9,
                          maxChildSize: 1,
                          builder: (BuildContext context, scrollController) {
                            bool _cb1 = true;

                            return SingleChildScrollView(
                              controller: scrollController,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .1),
                                    topRight: Radius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .1)),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: (MediaQuery.of(context)
                                          .size
                                          .height +
                                          MediaQuery.of(context)
                                              .size
                                              .width) /
                                          2 *
                                          .05, sigmaY: (MediaQuery.of(context)
                                          .size
                                          .height +
                                          MediaQuery.of(context)
                                              .size
                                              .width) /
                                          2 *
                                          .05),
                                  child: Container(
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 30, bottom: 70),
                                            child: Text(
                                              AppLocalizations.of(context)
                                                      .translate('types') +
                                                  ':',
                                              style: TextStyle(
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
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          CheckboxListTile(
                                            title: Text('Type 1'),
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .platform,
                                            value: _cb1,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _cb1 = value;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Tooltip(
                    message: AppLocalizations.of(context).translate('types'),
                    child: Text(
                      AppLocalizations.of(context).translate('types'),
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
                      .05,
                  left: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      2 *
                      .05),
              child: Container(
                width: MediaQuery.of(context).size.width + .7,
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
