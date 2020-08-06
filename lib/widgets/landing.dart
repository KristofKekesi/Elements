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

// reset visibility
bool resetVisibility = false;

// types
bool defTypesOthernonmetals = true;
bool defTypesNoblegases = true;
bool defTypesAlkalimetals = true;
bool defTypesAlkaliearthmetals = true;
bool defTypesMetalloids = true;
bool defTypesPosttransitionmetals = true;
bool defTypesTransitionMetals = true;
bool defTypesLantanoids = true;
bool defTypesActionids = true;
bool defTypesUnknown = true;

bool stateTypes = false;
bool enabledTypes = false;

bool typesOthernonmetals = true;
bool typesNoblegases = true;
bool typesAlkalimetals = true;
bool typesAlkaliearthmetals = true;
bool typesMetalloids = true;
bool typesPosttransitionmetals = true;
bool typesTransitionmetals = true;
bool typesLanthanoids = true;
bool typesActinoids = true;
bool typesUnknown = true;

// e-
double defElectronnegativityMin = 0;
double defElectronnegativityMax = 4;
bool defElectronnegativityUnknown = true;

bool stateElectronnegativity = false;
bool enabledElectronnegativity = false;

double ElectronnegativityMin = 0;
double ElectronnegativityMax = 4;
bool ElectronnegativityUnknown = true;

// atomic number
int settingAtomicnumMin = 1;
int settingAtomicnumberMax = 118;

int defAtomicnumMin = 1;
int defAtomicnumMax = 118;

bool stateAtomicnumber = false;
bool enabledAtomicnumber = false;

int atomicnumMin = 1;
int atomicnumMax = 118;

// constructors
int defConstructorsElectronMin = 0;
int defConstructorsElectronMax = 118;

int defConstructorsProtonMin = 0;
int defConstructorsProtonMax = 118;

int defConstructorsNeutronMin = 0;
int defConstructorsNeutronMax = 177;

bool stateConstructors = false;
bool enabledConstructors = false;

int constructorsElectronMin = 0;
int constructorsElectronMax = 118;

int constructorsProtonMin = 0;
int constructorsProtonMax = 118;

int constructorsNeutronMin = 0;
int constructorsNeutronMax = 177;

// weight
double defWeightMin = 1;
double defWeightMax = 294;

bool stateWeight = false;
bool enabledWeight = false;

double weightMin = 1;
double weightMax = 294;

void checkResetVisibility() {
  if (stateElectronnegativity == false && stateTypes == false && stateAtomicnumber && stateConstructors == false && stateConstructors == false && stateWeight == false) {
    resetVisibility = false;
  } else {
    resetVisibility = true;
  }
}

// ignore: camel_case_types
class landing extends StatefulWidget {
  @override
  _landingState createState() => _landingState();
}

// ignore: camel_case_types
class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
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
                bottom: MediaQuery.of(context).size.height * .01,
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
                            .02,
                        bottom: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .02),
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
                                                    initialValue:
                                                        ElectronnegativityMin,
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
                                                        ElectronnegativityMin =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    2));

                                                        if (ElectronnegativityMin == defElectronnegativityMin &&
                                                            ElectronnegativityMax ==
                                                                defElectronnegativityMax &&
                                                            ElectronnegativityUnknown ==
                                                                defElectronnegativityUnknown) {
                                                          stateElectronnegativity =
                                                              false;
                                                          enabledElectronnegativity =
                                                              false;
                                                        } else {
                                                          stateElectronnegativity =
                                                              true;
                                                          enabledElectronnegativity =
                                                              true;
                                                          resetVisibility = true;
                                                        }
                                                      });

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue:
                                                        ElectronnegativityMax,
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
                                                        ElectronnegativityMax =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    2));

                                                        if (ElectronnegativityMin == defElectronnegativityMin &&
                                                            ElectronnegativityMax ==
                                                                defElectronnegativityMax &&
                                                            ElectronnegativityUnknown ==
                                                                defElectronnegativityUnknown) {
                                                          stateElectronnegativity =
                                                              false;
                                                          enabledElectronnegativity =
                                                              false;
                                                        } else {
                                                          stateElectronnegativity =
                                                              true;
                                                          enabledElectronnegativity =
                                                              true;
                                                        }
                                                      });

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  StatefulBuilder(
                                                    builder: (BuildContext
                                                            context,
                                                        StateSetter setState) {
                                                      return
                                                        CheckboxListTile(
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
                                                        value:
                                                            ElectronnegativityUnknown,
                                                        onChanged:
                                                            (bool value) {
                                                          setState(
                                                            () {
                                                              ElectronnegativityUnknown =
                                                                  value;
//                                                              if (ElectronnegativityMin == defElectronnegativityMin &&
//                                                                  ElectronnegativityMax ==
//                                                                      defElectronnegativityMax &&
//                                                                  ElectronnegativityUnknown ==
//                                                                      defElectronnegativityUnknown) {
//                                                                setState(() {
//                                                                  stateElectronnegativity =
//                                                                  false;
//                                                                  enabledElectronnegativity =
//                                                                  false;
//                                                                });
//                                                                print('hamis');
//                                                              } else {
//                                                                setState(() {
//                                                                  stateElectronnegativity =
//                                                                  true;
//                                                                  enabledElectronnegativity =
//                                                                  true;
//                                                                });
//                                                                print('igaz');
//                                                              }
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context).translate(
                                        'electronnegativityMinSelector'),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        print('lol');
                                      },
                                      child: StatefulBuilder(
                                        builder: (BuildContext context,
                                            StateSetter setState) {
                                          return Checkbox(
                                            activeColor: Color.fromRGBO(
                                                255, 255, 255, 0),
                                            value: stateElectronnegativity,
                                          onChanged: enabledElectronnegativity
                                              ? (bool value) {
                                                  setState(
                                                    () {
                                                      stateElectronnegativity =
                                                          value;
                                                    },
                                                  );
                                                }
                                              : null,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
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
                                                      value:
                                                          typesOthernonmetals,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesOthernonmetals =
                                                                value;
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
                                                      value: typesNoblegases,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesNoblegases =
                                                                value;
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
                                                      value: typesAlkalimetals,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesAlkalimetals =
                                                                value;
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
                                                      value:
                                                          typesAlkaliearthmetals,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesAlkaliearthmetals =
                                                                value;
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
                                                      value: typesMetalloids,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesMetalloids =
                                                                value;
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
                                                      value:
                                                          typesPosttransitionmetals,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesPosttransitionmetals =
                                                                value;
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
                                                      value:
                                                          typesTransitionmetals,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesTransitionmetals =
                                                                value;
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
                                                      value: typesLanthanoids,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesLanthanoids =
                                                                value;
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
                                                      value: typesActinoids,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesActinoids =
                                                                value;
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
                                                      value: typesUnknown,
                                                      onChanged: (bool value) {
                                                        setState(
                                                          () {
                                                            typesUnknown =
                                                                value;
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate('typesMinSelector'),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return Checkbox(
                                          activeColor:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          value: stateTypes,
                                          onChanged: enabledTypes
                                              ? (bool value) {
                                                  setState(
                                                    () {
                                                      stateTypes = value;
                                                    },
                                                  );
                                                }
                                              : null,
                                        );
                                      },
                                    ),
                                  ),
                                ],
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
                                                        atomicnumMin
                                                            .toString()),
                                                    min: double.parse(
                                                        settingAtomicnumMin
                                                            .toString()),
                                                    max: double.parse(
                                                        settingAtomicnumberMax
                                                            .toString()),
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
                                                        atomicnumMin = num.parse(
                                                            v.toStringAsFixed(
                                                                0));

                                                        setState(() {
                                                          weightMin = double.parse(
                                                              percentageModifier(
                                                                  v));

                                                          if (atomicnumMin ==
                                                                  defAtomicnumMin &&
                                                              atomicnumMax ==
                                                                  defAtomicnumMax) {
                                                            stateAtomicnumber =
                                                                false;
                                                            enabledAtomicnumber =
                                                                false;
                                                          } else {
                                                            stateAtomicnumber =
                                                                true;
                                                            enabledAtomicnumber =
                                                                true;
                                                          }
                                                        });
                                                      });

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(
                                                        atomicnumMax
                                                            .toString()),
                                                    min: double.parse(
                                                        settingAtomicnumMin
                                                            .toString()),
                                                    max: double.parse(
                                                        settingAtomicnumberMax
                                                            .toString()),
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
                                                        atomicnumMax = num.parse(
                                                            v.toStringAsFixed(
                                                                0));

                                                        if (atomicnumMin ==
                                                                defAtomicnumMin &&
                                                            atomicnumMax ==
                                                                defAtomicnumMax) {
                                                          stateAtomicnumber =
                                                              false;
                                                          enabledAtomicnumber =
                                                              false;
                                                        } else {
                                                          stateAtomicnumber =
                                                              true;
                                                          enabledAtomicnumber =
                                                              true;
                                                        }
                                                      });

                                                      checkResetVisibility();
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Tooltip(
                                  message: AppLocalizations.of(context)
                                      .translate('atomicnumSelector'),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('atomicnumMinSelector'),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: StatefulBuilder(
                                    builder: (BuildContext context,
                                        StateSetter setState) {
                                      return Checkbox(
                                        activeColor:
                                            Color.fromRGBO(255, 255, 255, 0),
                                        value: stateAtomicnumber,
                                        onChanged: enabledAtomicnumber
                                            ? (bool value) {
                                                setState(
                                                  () {
                                                    stateAtomicnumber = value;
                                                  },
                                                );
                                              }
                                            : null,
                                      );
                                    },
                                  ),
                                ),
                              ],
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
                                                                  'constructorsSelector') +
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
                                                      AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'constructorsProtons') +
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
                                                        constructorsProtonMin
                                                            .toString()),
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
                                                        constructorsProtonMin =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    0));
                                                      });

                                                      if (constructorsProtonMin == defConstructorsProtonMin &&
                                                          constructorsProtonMax ==
                                                              defConstructorsProtonMax &&
                                                          constructorsElectronMin ==
                                                              defConstructorsElectronMin &&
                                                          constructorsElectronMax ==
                                                              defConstructorsElectronMax &&
                                                          constructorsNeutronMin ==
                                                              defConstructorsNeutronMin &&
                                                          constructorsNeutronMax ==
                                                              defConstructorsNeutronMax) {
                                                        stateConstructors =
                                                            false;
                                                        enabledConstructors =
                                                            false;
                                                      } else {
                                                        stateConstructors =
                                                            true;
                                                        enabledConstructors =
                                                            true;
                                                      }

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(
                                                        constructorsProtonMax
                                                            .toString()),
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
                                                        constructorsProtonMax =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    0));

                                                        if (constructorsProtonMin == defConstructorsProtonMin &&
                                                            constructorsProtonMax ==
                                                                defConstructorsProtonMax &&
                                                            constructorsElectronMin ==
                                                                defConstructorsElectronMin &&
                                                            constructorsElectronMax ==
                                                                defConstructorsElectronMax &&
                                                            constructorsNeutronMin ==
                                                                defConstructorsNeutronMin &&
                                                            constructorsNeutronMax ==
                                                                defConstructorsNeutronMax) {
                                                          stateConstructors =
                                                              false;
                                                          enabledConstructors =
                                                              false;
                                                        } else {
                                                          stateConstructors =
                                                              true;
                                                          enabledConstructors =
                                                              true;
                                                        }

                                                        checkResetVisibility();
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
                                                      AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'constructorsElectrons') +
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
                                                        constructorsElectronMin
                                                            .toString()),
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
                                                        constructorsElectronMin =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    0));
                                                      });

                                                      if (constructorsProtonMin == defConstructorsProtonMin &&
                                                          constructorsProtonMax ==
                                                              defConstructorsProtonMax &&
                                                          constructorsElectronMin ==
                                                              defConstructorsElectronMin &&
                                                          constructorsElectronMax ==
                                                              defConstructorsElectronMax &&
                                                          constructorsNeutronMin ==
                                                              defConstructorsNeutronMin &&
                                                          constructorsNeutronMax ==
                                                              defConstructorsNeutronMax) {
                                                        stateConstructors =
                                                            false;
                                                        enabledConstructors =
                                                            false;
                                                      } else {
                                                        stateConstructors =
                                                            true;
                                                        enabledConstructors =
                                                            true;
                                                      }

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(
                                                        constructorsElectronMax
                                                            .toString()),
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
                                                        constructorsElectronMax =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    0));
                                                      });

                                                      if (constructorsProtonMin == defConstructorsProtonMin &&
                                                          constructorsProtonMax ==
                                                              defConstructorsProtonMax &&
                                                          constructorsElectronMin ==
                                                              defConstructorsElectronMin &&
                                                          constructorsElectronMax ==
                                                              defConstructorsElectronMax &&
                                                          constructorsNeutronMin ==
                                                              defConstructorsNeutronMin &&
                                                          constructorsNeutronMax ==
                                                              defConstructorsNeutronMax) {
                                                        stateConstructors =
                                                            false;
                                                        enabledConstructors =
                                                            false;
                                                      } else {
                                                        stateConstructors =
                                                            true;
                                                        enabledConstructors =
                                                            true;
                                                      }

                                                      checkResetVisibility();
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
                                                      AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'constructorsNeutrons') +
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
                                                        constructorsNeutronMin
                                                            .toString()),
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
                                                        constructorsNeutronMin =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    0));
                                                      });

                                                      if (constructorsProtonMin == defConstructorsProtonMin &&
                                                          constructorsProtonMax ==
                                                              defConstructorsProtonMax &&
                                                          constructorsElectronMin ==
                                                              defConstructorsElectronMin &&
                                                          constructorsElectronMax ==
                                                              defConstructorsElectronMax &&
                                                          constructorsNeutronMin ==
                                                              defConstructorsNeutronMin &&
                                                          constructorsNeutronMax ==
                                                              defConstructorsNeutronMax) {
                                                        stateConstructors =
                                                            false;
                                                        enabledConstructors =
                                                            false;
                                                      } else {
                                                        stateConstructors =
                                                            true;
                                                        enabledConstructors =
                                                            true;
                                                      }

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: double.parse(
                                                        constructorsNeutronMax
                                                            .toString()),
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
                                                        constructorsNeutronMax =
                                                            num.parse(v
                                                                .toStringAsFixed(
                                                                    0));
                                                      });

                                                      if (constructorsProtonMin == defConstructorsProtonMin &&
                                                          constructorsProtonMax ==
                                                              defConstructorsProtonMax &&
                                                          constructorsElectronMin ==
                                                              defConstructorsElectronMin &&
                                                          constructorsElectronMax ==
                                                              defConstructorsElectronMax &&
                                                          constructorsNeutronMin ==
                                                              defConstructorsNeutronMin &&
                                                          constructorsNeutronMax ==
                                                              defConstructorsNeutronMax) {
                                                        stateConstructors =
                                                            false;
                                                        enabledConstructors =
                                                            false;
                                                      } else {
                                                        stateConstructors =
                                                            true;
                                                        enabledConstructors =
                                                            true;
                                                      }

                                                      checkResetVisibility();
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
                                  .translate('constructorsSelector'),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate('constructorsMinSelector'),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return Checkbox(
                                          activeColor:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          value: stateConstructors,
                                          onChanged: enabledConstructors
                                              ? (bool value) {
                                                  setState(
                                                    () {
                                                      stateConstructors = value;
                                                    },
                                                  );
                                                }
                                              : null,
                                        );
                                      },
                                    ),
                                  ),
                                ],
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
                                                    initialValue: weightMin,
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
                                                      setState(() {
                                                        weightMin = double.parse(
                                                            percentageModifier(
                                                                v));

                                                        if (weightMin ==
                                                                defWeightMin &&
                                                            weightMax ==
                                                                defWeightMax) {
                                                          stateWeight = false;
                                                          enabledWeight = false;
                                                        } else {
                                                          stateWeight = true;
                                                          enabledWeight = true;
                                                        }
                                                      });

                                                      checkResetVisibility();
                                                    },
                                                  ),
                                                  SleekCircularSlider(
                                                    initialValue: weightMax,
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
                                                      setState(() {
                                                        weightMax = double.parse(
                                                            percentageModifier(
                                                                v));

                                                        if (weightMin ==
                                                                defWeightMin &&
                                                            weightMax ==
                                                                defWeightMax) {
                                                          stateWeight = false;
                                                          enabledWeight = false;
                                                        } else {
                                                          stateWeight = true;
                                                          enabledWeight = true;
                                                        }
                                                      });

                                                      checkResetVisibility();
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
                            //width: MediaQuery.of(context).size.width,
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('weightSelector'),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate('weightMinSelector'),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //height: MediaQuery.of(context).size.width * .0014,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .09,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return Checkbox(
                                          activeColor:
                                              Color.fromRGBO(255, 255, 255, 0),
                                          value: stateWeight,
                                          onChanged: enabledWeight
                                              ? (bool value) {
                                                  setState(
                                                    () {
                                                      stateWeight = value;
                                                    },
                                                  );
                                                }
                                              : null,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: resetVisibility ? 1 : 0,
                  child:
                GestureDetector(
                  onTap: () {
                    if (resetVisibility == true) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            AppLocalizations.of(context)
                                .translate('resetWarnSelector'),
                          ),
                          action: SnackBarAction(
                            label: AppLocalizations.of(context)
                                .translate('resetWarnLabelSelector'),
                            textColor: Color(0xfff22447),
                            onPressed: () {
                              typesOthernonmetals = defTypesOthernonmetals;
                              typesNoblegases = defTypesNoblegases;
                              typesAlkalimetals = defTypesAlkaliearthmetals;
                              typesAlkaliearthmetals =
                                  defTypesAlkaliearthmetals;
                              typesMetalloids = defTypesMetalloids;
                              typesPosttransitionmetals =
                                  defTypesPosttransitionmetals;
                              typesTransitionmetals = defTypesTransitionMetals;
                              typesLanthanoids = defTypesLantanoids;
                              typesActinoids = defTypesActionids;
                              typesUnknown = defTypesUnknown;

                              ElectronnegativityMin = defElectronnegativityMin;
                              ElectronnegativityMax = defElectronnegativityMax;
                              ElectronnegativityUnknown =
                                  defElectronnegativityUnknown;

                              atomicnumMin = defAtomicnumMin;
                              atomicnumMax = defAtomicnumMax;

                              constructorsElectronMin =
                                  defConstructorsElectronMin;
                              constructorsElectronMax =
                                  defConstructorsElectronMax;

                              constructorsProtonMin = defConstructorsProtonMin;
                              constructorsProtonMax = defConstructorsProtonMax;

                              constructorsNeutronMin =
                                  defConstructorsNeutronMin;
                              constructorsNeutronMax =
                                  defConstructorsNeutronMax;

                              weightMin = defWeightMin;
                              weightMax = defWeightMax;

                              stateElectronnegativity = false;
                              stateTypes = false;
                              stateAtomicnumber = false;
                              stateConstructors = false;
                              stateWeight = false;

                              enabledElectronnegativity = false;
                              enabledTypes = false;
                              enabledAtomicnumber = false;
                              enabledConstructors = false;
                              enabledWeight = false;

                              resetVisibility = false;

                              setState(() {});

                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(AppLocalizations.of(context)
                                      .translate('resetDoneSelector')),
                                  action: SnackBarAction(
                                      label: AppLocalizations.of(context)
                                          .translate('resetDoneLabelSelector'),
                                      textColor: Color(0xfffffffff),
                                      onPressed: () {}),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context).translate('resetSelector'),
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * .07,
                    ),
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
                      cb1: typesOthernonmetals,
                      cb2: typesNoblegases,
                      cb3: typesAlkalimetals,
                      cb4: typesAlkaliearthmetals,
                      cb5: typesMetalloids,
                      cb6: typesPosttransitionmetals,
                      cb7: typesTransitionmetals,
                      cb8: typesLanthanoids,
                      cb9: typesActinoids,
                      cb0: typesUnknown,
                      en1: ElectronnegativityMin,
                      en2: ElectronnegativityMax,
                      en3: ElectronnegativityUnknown,
                      an1: atomicnumMin,
                      an2: atomicnumMax,
                      prot1: constructorsProtonMin,
                      prot2: constructorsProtonMax,
                      elect1: constructorsElectronMin,
                      elect2: constructorsElectronMax,
                      neut1: constructorsNeutronMin,
                      neut2: constructorsNeutronMax,
                      minw: weightMin,
                      maxw: weightMax,
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
