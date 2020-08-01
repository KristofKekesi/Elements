import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/drawer.dart';

import 'package:elements_rework/widgets/localization.dart';
import 'package:elements_rework/widgets/resultWindow.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

String percentageModifier(double value) {
  final roundedValue = value.toStringAsFixed(2).toString();
  return roundedValue;
}

String percentageModifierNull(double value) {
  final roundedValue = value.toStringAsFixed(0).toString();
  return roundedValue;
}

bool cb1 = true;
bool cb2 = true;
bool cb3 = true;
bool cb4 = true;
bool cb5 = true;
bool cb6 = true;
bool cb7 = true;
bool cb8 = true;
bool cb9 = true;
bool cb0 = true;

double en1 = 0;
double en2 = 4;
bool en3 = true;

int ae1 = 1;
int ae2 = 118;
int an1 = 1;
int an2 = 118;

int elect1 = 0;
int elect2 = 118;

int prot1 = 0;
int prot2 = 118;

int neut1 = 0;
int neut2 = 177;

double minw = 1;
double maxw = 294;

// ignore: camel_case_types
class landing extends StatefulWidget {
  @override
  _landingState createState() => _landingState();
}

// ignore: camel_case_types
class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    //double toDouble(int d) => d / 1;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .1,
                  top: MediaQuery.of(context).size.height * .02,
                  bottom: MediaQuery.of(context).size.height * .02),
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
                          height: MediaQuery.of(context).size.width * .105,
                          width: MediaQuery.of(context).size.width * .105),
                    ),
                  ),
                  Text(
                    ' Elements',
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * .12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .05,
                bottom: MediaQuery.of(context).size.height * .05,
                right: MediaQuery.of(context).size.width * .1,
                left: MediaQuery.of(context).size.width * .1),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context).translate('selectorTag'),
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
                    gradient: LinearGradient(colors: [
                      Color(0xff62a39c),
                      Color(0xff13547a),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                        (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .04),
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
                                  initialChildSize: .95,
                                  maxChildSize: 1,
                                  builder:
                                      (BuildContext context, scrollController) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .1),
                                        topRight: Radius.circular(
                                            (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .1),
                                      ),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05,
                                            sigmaY: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05),
                                        child: SingleChildScrollView(
                                          controller: scrollController,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .05),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'electronnegativitySelector') +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: en1,
                                                    min: 0,
                                                    max: 4,
                                                    appearance:
                                                        CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                          InfoProperties(
                                                        modifier:
                                                            percentageModifier,
                                                        topLabelStyle: TextStyle(
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .06,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                        mainLabelStyle:
                                                            TextStyle(
                                                          fontSize: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height +
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width) /
                                                              2 *
                                                              .08,
                                                          color: Colors.white,
                                                        ),
                                                        topLabelText:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'sliderMin'),
                                                      ),
                                                      customColors:
                                                          CustomSliderColors(
                                                        trackColor:
                                                            Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff13547a),
                                                          Color(0xff62a39c),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        en1 = num.parse(
                                                            v.toStringAsFixed(
                                                                2));
                                                      });
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: en2,
                                                    min: 0,
                                                    max: 4,
                                                    appearance:
                                                        CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                          InfoProperties(
                                                        modifier:
                                                            percentageModifier,
                                                        topLabelStyle: TextStyle(
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
                                                                .06,
                                                            color:
                                                                Colors.white),
                                                        mainLabelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .08),
                                                        topLabelText:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'sliderMax'),
                                                      ),
                                                      customColors:
                                                          CustomSliderColors(
                                                        trackColor:
                                                            Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff13547a),
                                                          Color(0xff62a39c),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        en2 = num.parse(
                                                            v.toStringAsFixed(
                                                                2));
                                                      });
                                                    },
                                                  ),
                                                  StatefulBuilder(
                                                    builder: (BuildContext
                                                            context,
                                                        StateSetter setState) {
                                                      return CheckboxListTile(
                                                        title: Text(
                                                          Capitalizate(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'unknownelectronnegativity'),
                                                          ),
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  .04),
                                                        ),
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .platform,
                                                        activeColor:
                                                            Color.fromRGBO(255,
                                                                255, 255, 0),
                                                        value: en3,
                                                        onChanged:
                                                            (bool value) {
                                                          setState(
                                                            () {
                                                              en3 = value;
                                                            },
                                                          );
                                                        },
                                                      );
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('electronnegativitySelector'),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('electronnegativityMinSelector'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .1,
                                  color: Colors.white,
                                ),
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
                                  initialChildSize: .95,
                                  maxChildSize: 1,
                                  builder:
                                      (BuildContext context, scrollController) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                              (MediaQuery.of(context)
                                                          .size
                                                          .height +
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width) /
                                                  2 *
                                                  .1),
                                          topRight: Radius.circular(
                                              (MediaQuery.of(context)
                                                          .size
                                                          .height +
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width) /
                                                  2 *
                                                  .1)),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05,
                                            sigmaY: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05),
                                        child: SingleChildScrollView(
                                          controller: scrollController,
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .04,
                                                      bottom:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .05),
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                            .translate(
                                                                'typesSelector') +
                                                        ':',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .08,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'otherNonmetals'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb1,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb1 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'nobleGases'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb2,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb2 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'alkaliMetals'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb3,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb3 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'alkaliEarthMetals'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb4,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb4 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'metalloids'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb5,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb5 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'post-transitionMetals'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb6,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb6 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'transitionMetals'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb7,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb7 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'lanthanoids'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb8,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb8 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'actinoids'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb9,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb9 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                                StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return CheckboxListTile(
                                                      title: Text(
                                                        Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'unknown'),
                                                        ),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                .04),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .platform,
                                                      activeColor:
                                                          Color.fromRGBO(
                                                              255, 255, 255, 0),
                                                      value: cb0,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            cb0 = value;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('typesSelector'),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('typesMinSelector'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .1,
                                  color: Colors.white,
                                ),
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
                                  initialChildSize: .95,
                                  maxChildSize: 1,
                                  builder:
                                      (BuildContext context, scrollController) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            (MediaQuery.of(context)
                                                .size
                                                .height +
                                                MediaQuery.of(context)
                                                    .size
                                                    .width) /
                                                2 *
                                                .1),
                                        topRight: Radius.circular(
                                            (MediaQuery.of(context)
                                                .size
                                                .height +
                                                MediaQuery.of(context)
                                                    .size
                                                    .width) /
                                                2 *
                                                .1),
                                      ),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: (MediaQuery.of(context)
                                                .size
                                                .height +
                                                MediaQuery.of(context)
                                                    .size
                                                    .width) /
                                                2 *
                                                .05,
                                            sigmaY: (MediaQuery.of(context)
                                                .size
                                                .height +
                                                MediaQuery.of(context)
                                                    .size
                                                    .width) /
                                                2 *
                                                .05),
                                        child: SingleChildScrollView(
                                          controller: scrollController,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .05),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                          context)
                                                          .translate(
                                                          'atomicnumSelector') +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(
                                                        an1.toString()),
                                                    min: double.parse(
                                                        ae1.toString()),
                                                    max: double.parse(
                                                        ae2.toString()),
                                                    appearance:
                                                    CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                          context)
                                                          .size
                                                          .height +
                                                          MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                      InfoProperties(
                                                        modifier:
                                                        percentageModifierNull,
                                                        topLabelStyle: TextStyle(
                                                            fontSize: (MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height +
                                                                MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width) /
                                                                2 *
                                                                .06,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color:
                                                            Colors.white),
                                                        mainLabelStyle:
                                                        TextStyle(
                                                          fontSize: (MediaQuery.of(
                                                              context)
                                                              .size
                                                              .height +
                                                              MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .width) /
                                                              2 *
                                                              .08,
                                                          color: Colors.white,
                                                        ),
                                                        topLabelText:
                                                        AppLocalizations.of(
                                                            context)
                                                            .translate(
                                                            'sliderMin'),
                                                      ),
                                                      customColors:
                                                      CustomSliderColors(
                                                        trackColor:
                                                        Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff13547a),
                                                          Color(0xff62a39c),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        an1 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
                                                      });
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(
                                                        an2.toString()),
                                                    min: double.parse(
                                                        ae1.toString()),
                                                    max: double.parse(
                                                        ae2.toString()),
                                                    appearance:
                                                    CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                          context)
                                                          .size
                                                          .height +
                                                          MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                      InfoProperties(
                                                        modifier:
                                                        percentageModifierNull,
                                                        topLabelStyle: TextStyle(
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
                                                                .06,
                                                            color:
                                                            Colors.white),
                                                        mainLabelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: (MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height +
                                                                MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width) /
                                                                2 *
                                                                .08),
                                                        topLabelText:
                                                        AppLocalizations.of(
                                                            context)
                                                            .translate(
                                                            'sliderMax'),
                                                      ),
                                                      customColors:
                                                      CustomSliderColors(
                                                        trackColor:
                                                        Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff13547a),
                                                          Color(0xff62a39c),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        an2 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('atomicnumSelector'),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('atomicnumMinSelector'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  fontSize:
                                  MediaQuery.of(context).size.width * .1,
                                  color: Colors.white,
                                ),
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
                                  initialChildSize: .95,
                                  maxChildSize: 1,
                                  builder:
                                      (BuildContext context, scrollController) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .1),
                                        topRight: Radius.circular(
                                            (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .1),
                                      ),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05,
                                            sigmaY: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05),
                                        child: SingleChildScrollView(
                                          controller: scrollController,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .05),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                          context)
                                                          .translate(
                                                          'atomicnumSelector') +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .05),
                                                    child: Text(
                                                                  'Protons' +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(prot1.toString()),
                                                    min: 0,
                                                    max: 118,
                                                    appearance:
                                                        CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                          InfoProperties(
                                                        modifier:
                                                            percentageModifierNull,
                                                        topLabelStyle: TextStyle(
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .06,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                        mainLabelStyle:
                                                            TextStyle(
                                                          fontSize: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height +
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width) /
                                                              2 *
                                                              .08,
                                                          color: Colors.white,
                                                        ),
                                                        topLabelText:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'sliderMin'),
                                                      ),
                                                      customColors:
                                                          CustomSliderColors(
                                                        trackColor:
                                                            Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xffff881b),
                                                          Color(0xffffcf1b),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        prot1 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
                                                      });
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(prot2.toString()),
                                                    min: 0,
                                                    max: 118,
                                                    appearance:
                                                        CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                          InfoProperties(
                                                        modifier:
                                                            percentageModifierNull,
                                                        topLabelStyle: TextStyle(
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
                                                                .06,
                                                            color:
                                                                Colors.white),
                                                        mainLabelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .08),
                                                        topLabelText:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'sliderMax'),
                                                      ),
                                                      customColors:
                                                          CustomSliderColors(
                                                        trackColor:
                                                            Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xffff881b),
                                                          Color(0xffffcf1b),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        prot2 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
                                                      });
                                                    },
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .05),
                                                    child: Text(
                                                      'Electrons' +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(elect1.toString()),
                                                    min: 0,
                                                    max: 118,
                                                    appearance:
                                                    CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                          context)
                                                          .size
                                                          .height +
                                                          MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                      InfoProperties(
                                                        modifier:
                                                        percentageModifierNull,
                                                        topLabelStyle: TextStyle(
                                                            fontSize: (MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height +
                                                                MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width) /
                                                                2 *
                                                                .06,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color:
                                                            Colors.white),
                                                        mainLabelStyle:
                                                        TextStyle(
                                                          fontSize: (MediaQuery.of(
                                                              context)
                                                              .size
                                                              .height +
                                                              MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .width) /
                                                              2 *
                                                              .08,
                                                          color: Colors.white,
                                                        ),
                                                        topLabelText:
                                                        AppLocalizations.of(
                                                            context)
                                                            .translate(
                                                            'sliderMin'),
                                                      ),
                                                      customColors:
                                                      CustomSliderColors(
                                                        trackColor:
                                                        Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xffb80733),
                                                          Color(0xfff22447),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        elect1 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
                                                      });
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(elect2.toString()),
                                                    min: 0,
                                                    max: 118,
                                                    appearance:
                                                    CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                          context)
                                                          .size
                                                          .height +
                                                          MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                      InfoProperties(
                                                        modifier:
                                                        percentageModifierNull,
                                                        topLabelStyle: TextStyle(
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
                                                                .06,
                                                            color:
                                                            Colors.white),
                                                        mainLabelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: (MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height +
                                                                MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width) /
                                                                2 *
                                                                .08),
                                                        topLabelText:
                                                        AppLocalizations.of(
                                                            context)
                                                            .translate(
                                                            'sliderMax'),
                                                      ),
                                                      customColors:
                                                      CustomSliderColors(
                                                        trackColor:
                                                        Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xffb80733),
                                                          Color(0xfff22447),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        elect2 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
                                                      });
                                                    },
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .height *
                                                            .05),
                                                    child: Text(
                                                      'Neutrons' +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                            context)
                                                            .size
                                                            .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(neut1.toString()),
                                                    min: 0,
                                                    max: 177,
                                                    appearance:
                                                    CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                          context)
                                                          .size
                                                          .height +
                                                          MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                      InfoProperties(
                                                        modifier:
                                                        percentageModifierNull,
                                                        topLabelStyle: TextStyle(
                                                            fontSize: (MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height +
                                                                MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width) /
                                                                2 *
                                                                .06,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color:
                                                            Colors.white),
                                                        mainLabelStyle:
                                                        TextStyle(
                                                          fontSize: (MediaQuery.of(
                                                              context)
                                                              .size
                                                              .height +
                                                              MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .width) /
                                                              2 *
                                                              .08,
                                                          color: Colors.white,
                                                        ),
                                                        topLabelText:
                                                        AppLocalizations.of(
                                                            context)
                                                            .translate(
                                                            'sliderMin'),
                                                      ),
                                                      customColors:
                                                      CustomSliderColors(
                                                        trackColor:
                                                        Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff059142),
                                                          Color(0xff07da63),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        neut1 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
                                                      });
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(neut2.toString()),
                                                    min: 0,
                                                    max: 177,
                                                    appearance:
                                                    CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                          context)
                                                          .size
                                                          .height +
                                                          MediaQuery.of(
                                                              context)
                                                              .size
                                                              .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                      InfoProperties(
                                                        modifier:
                                                        percentageModifierNull,
                                                        topLabelStyle: TextStyle(
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
                                                                .06,
                                                            color:
                                                            Colors.white),
                                                        mainLabelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: (MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height +
                                                                MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width) /
                                                                2 *
                                                                .08),
                                                        topLabelText:
                                                        AppLocalizations.of(
                                                            context)
                                                            .translate(
                                                            'sliderMax'),
                                                      ),
                                                      customColors:
                                                      CustomSliderColors(
                                                        trackColor:
                                                        Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff059142),
                                                          Color(0xff07da63),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (v) {
                                                      setState(() {
                                                        neut2 = num.parse(
                                                            v.toStringAsFixed(
                                                                0));
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('atomicnumSelector'),
                              child: Text(
                                'Constructors',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .1,
                                  color: Colors.white,
                                ),
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
                                  initialChildSize: .95,
                                  maxChildSize: 1,
                                  builder:
                                      (BuildContext context, scrollController) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .1),
                                        topRight: Radius.circular(
                                            (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .1),
                                      ),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05,
                                            sigmaY: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .05),
                                        child: SingleChildScrollView(
                                          controller: scrollController,
                                          child: Container(
                                            child: Center(
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .04,
                                                        bottom: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .05),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'weightSelector') +
                                                          ':',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .09,
                                                      ),
                                                    ),
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: minw,
                                                    min: 1,
                                                    max: 294,
                                                    appearance:
                                                        CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                          InfoProperties(
                                                        modifier:
                                                            percentageModifier,
                                                        topLabelStyle: TextStyle(
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .06,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                        mainLabelStyle:
                                                            TextStyle(
                                                          fontSize: (MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height +
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width) /
                                                              2 *
                                                              .08,
                                                          color: Colors.white,
                                                        ),
                                                        topLabelText:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'sliderMin'),
                                                      ),
                                                      customColors:
                                                          CustomSliderColors(
                                                        trackColor:
                                                            Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff13547a),
                                                          Color(0xff62a39c),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (double v) {
                                                        minw = double.parse(percentageModifier(v));
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: maxw,
                                                    min: 1,
                                                    max: 294,
                                                    appearance:
                                                        CircularSliderAppearance(
                                                      animationEnabled: false,
                                                      size: (MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .4,
                                                      infoProperties:
                                                          InfoProperties(
                                                        modifier:
                                                            percentageModifier,
                                                        topLabelStyle: TextStyle(
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
                                                                .06,
                                                            color:
                                                                Colors.white),
                                                        mainLabelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .08),
                                                        topLabelText:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'sliderMax'),
                                                      ),
                                                      customColors:
                                                          CustomSliderColors(
                                                        trackColor:
                                                            Colors.white,
                                                        hideShadow: true,
                                                        progressBarColors: <
                                                            Color>[
                                                          Color(0xff13547a),
                                                          Color(0xff62a39c),
                                                        ],
                                                      ),
                                                    ),
                                                    onChangeEnd: (double v) {
                                                        maxw = double.parse(percentageModifier(v));
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('weightSelector'),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('weightMinSelector'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .1,
                                  color: Colors.white,
                                ),
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
          Tooltip(
            message: AppLocalizations.of(context).translate('searchTooltip'),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => searchResults(
                      cb1: cb1,
                      cb2: cb2,
                      cb3: cb3,
                      cb4: cb4,
                      cb5: cb5,
                      cb6: cb6,
                      cb7: cb7,
                      cb8: cb8,
                      cb9: cb9,
                      cb0: cb0,
                      en1: en1,
                      en2: en2,
                      en3: en3,
                      an1: an1,
                      an2: an2,
                      prot1: prot1,
                      prot2: prot2,
                      elect1: elect1,
                      elect2: elect2,
                      neut1: neut1,
                      neut2: neut2,
                      minw: minw,
                      maxw: maxw,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 22,
                    right: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        2 *
                        .05,
                    left: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        2 *
                        .05),
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff62a39c),
                      Color(0xff13547a),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .02),
                  ),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).translate('search'),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .08),
                    ),
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
