import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/drawer.dart';

import 'package:elements_rework/widgets/localization.dart';
import 'package:elements_rework/widgets/resultWindow.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

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
                  left:
                          MediaQuery.of(context).size.width
                       *
                      .1,
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
                          height: MediaQuery.of(context).size.width *
                              .105,
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
                right:
                        MediaQuery.of(context).size.width *
                    .1,
                left:
                        MediaQuery.of(context).size.width *
                    .1),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppLocalizations.of(context).translate('selectorTag'),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize:
                              MediaQuery.of(context).size.width *
                          .12,
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
                                                        fontSize:
                                                                MediaQuery.of(
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
                                                      print(
                                                          v.toStringAsFixed(2));
                                                      en1 = num.parse(
                                                          v.toStringAsFixed(2));
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
                                                      print(
                                                          v.toStringAsFixed(2));
                                                      en2 = num.parse(
                                                          v.toStringAsFixed(2));
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
                                        MediaQuery.of(context).size.width
                                    *
                                    .1,
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
                                                                'types') +
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
                            message:
                                AppLocalizations.of(context).translate('types'),
                            child: Text(
                              AppLocalizations.of(context).translate('types'),
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
                height: MediaQuery.of(context).size.height *
                    .1,
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
