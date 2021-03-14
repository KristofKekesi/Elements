import 'dart:convert';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';

import 'localization.dart';

class ElementPopup extends StatelessWidget {
  final context;

  final String name;
  final String symbol;
  final int number;
  final String consistency;
  final String discovery;
  final String electronegativity;
  final String block;
  final String weight;
  final String radioactivity;
  final bool gamma;
  final bool beta;
  final bool alpha;
  final bool multipleRadiationEmitters;
  final String type;
  final String isotopeNum;
  final String isotopesSrc;
  final String chargedComponents;
  final String neutron;

  const ElementPopup({
    Key key,
    this.context,
    this.name,
    this.symbol,
    this.number,
    this.consistency,
    this.electronegativity,
    this.block,
    this.weight,
    this.radioactivity,
    this.gamma,
    this.beta,
    this.alpha,
    this.multipleRadiationEmitters,
    this.type,
    this.isotopeNum,
    this.isotopesSrc,
    this.chargedComponents,
    this.neutron,
    this.discovery,
  }) : super(key: key);


  String Capitalizate(input) {
    return input[0].toUpperCase() + input.substring(1);
  }

  String checkUnknown(input) {
    if (input == 'unknown') {
      return Capitalizate(AppLocalizations.of(context).translate('unknown'));
    } else {
      return input;
    }
  }

  String consistencyIcon() {
    if (consistency == "gas") {
      return "lib/icons/gas_white_500.png";
    } else if (consistency == "fluid") {
      return "lib/icons/fluid_white_500.png";
    } else if (consistency == "solid") {
      return "lib/icons/solid_white_500.png";
    } else {
      return "lib/icons/questionmark_white_500.png";
    }
  }

  String consistencyText() {
    if (consistency == "gas") {
      return " " + Capitalizate(AppLocalizations.of(context).translate("gas"));
    } else if (consistency == "fluid") {
      return " " +
          Capitalizate(AppLocalizations.of(context).translate("fluid"));
    } else if (consistency == "solid") {
      return " " +
          Capitalizate(AppLocalizations.of(context).translate("solid"));
    } else {
      return " " +
          Capitalizate(AppLocalizations.of(context).translate("unknown"));
    }
  }

  String discoveryText() {
    if (discovery == "ancient") {
      return ' ' +
          Capitalizate(AppLocalizations.of(context).translate("ancient"));
    } else if (discovery == "hypothetical") {
      return ' ' +
          Capitalizate(AppLocalizations.of(context).translate("hypothetical"));
    } else {
      return ' ' + discovery;
    }
  }

  String radioactivityString() {
    if (radioactivity == "stable") {
      return " " +
          Capitalizate(AppLocalizations.of(context).translate("stable"));
    } else {
      String list = " ";
      if (gamma == true) {
        list +=
            Capitalizate(AppLocalizations.of(context).translate("gamma")) + " ";
      } else if (beta == true) {
        list +=
            Capitalizate(AppLocalizations.of(context).translate("beta")) + " ";
      } else if (alpha == true) {
        list +=
            Capitalizate(AppLocalizations.of(context).translate("alpha")) + " ";
      } else if (multipleRadiationEmitters == true) {
        list += Capitalizate(AppLocalizations.of(context)
                .translate("multipleRadiationEmitters") +
            " ");
      } else {
        list = " " +
            Capitalizate(AppLocalizations.of(context).translate("radioactive"));
      }
      return list;
    }
  }

  String typeText() {
    return Capitalizate(AppLocalizations.of(context).translate(type));
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: .56,
        maxChildSize: 1,
        builder: (BuildContext context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      2 *
                      .1,
                ),
                topRight: Radius.circular((MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    2 *
                    .1),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        2 *
                        .05,
                    sigmaY: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        2 *
                        .05),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 0, 0, .3)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("elementName"),
                              child: AutoSizeText(
                                name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1.2,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .1,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                              bottom: MediaQuery.of(context).size.height * .03,
                            ),
                            child: Row(
                              children: <Widget>[
                                Tooltip(
                                  message: AppLocalizations.of(context)
                                      .translate("symbol"),
                                  child: Text(
                                    symbol + ', ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .07,
                                    ),
                                  ),
                                ),
                                Tooltip(
                                  message: AppLocalizations.of(context)
                                      .translate("elementNumber"),
                                  child: Text(
                                    number.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .07,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("consistency"),
                              child: Row(
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                        consistencyIcon(),
                                      ),
                                      height:
                                          MediaQuery.of(context).size.width *
                                              .06,
                                      width: MediaQuery.of(context).size.width *
                                          .06),
                                  Text(
                                    consistencyText(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: Capitalizate(
                                AppLocalizations.of(context)
                                    .translate("discovery"),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          "lib/icons/discovery_white_500.png"),
                                      height:
                                          MediaQuery.of(context).size.width *
                                              .06,
                                      width: MediaQuery.of(context).size.width *
                                          .06),
                                  Text(
                                    discoveryText(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("radioactivity"),
                              child: Row(
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          "lib/icons/radioactive_white_500.png"),
                                      height:
                                          MediaQuery.of(context).size.width *
                                              .05,
                                      width: MediaQuery.of(context).size.width *
                                          .05),
                                  Text(
                                    " " + radioactivityString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .7,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        .005,
                                    bottom: MediaQuery.of(context).size.height *
                                        .03),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('radioactivityInfo'),
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width * .05,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("type"),
                              child: Text(
                                typeText(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                              top: MediaQuery.of(context).size.height * .03,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("electronegativity"),
                              child: Text(
                                AppLocalizations.of(context)
                                        .translate("electronegativityPre") +
                                    ": " +
                                    checkUnknown(electronegativity),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("block"),
                              child: Text(
                                Capitalizate(AppLocalizations.of(context)
                                        .translate("blockPre")) +
                                    ": " +
                                    checkUnknown(block),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("weight"),
                              child: Text(
                                Capitalizate(AppLocalizations.of(context)
                                        .translate("weightPre")) +
                                    ": " +
                                    checkUnknown(weight),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                              bottom: MediaQuery.of(context).size.height * .03,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .6,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        .005),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('molarmass'),
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width * .05,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Conditional.single(
                            context: context,
                            conditionBuilder: (BuildContext context) =>
                                int.parse(isotopeNum) < 1,
                            widgetBuilder: (BuildContext context) =>
                                Container(),
                            fallbackBuilder: (BuildContext context) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width * .15,
                                    bottom: MediaQuery.of(context).size.height *
                                        .01,
                                    right:
                                        MediaQuery.of(context).size.width * .15,
                                  ),
                                  child: Tooltip(
                                    message: AppLocalizations.of(context)
                                        .translate('isotopeTitle')
                                        .replaceAll('{elementName}', name),
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate('isotopes'),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .08,
                                      ),
                                    ),
                                  ),
                                ),
                                FutureBuilder(
                                    future: DefaultAssetBundle.of(context)
                                        .loadString('lib/' + isotopesSrc),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        var isotopeInfo = json
                                            .decode(snapshot.data.toString());

                                        String isotopeWeight(input) {
                                          if (input.contains('unknown')) {
                                            return Capitalizate(
                                                AppLocalizations.of(context)
                                                    .translate('unknown'));
                                          } else {
                                            return input;
                                          }
                                        }

                                        String isotopeRate(input) {
                                          if (input.contains('unknown')) {
                                            return Capitalizate(
                                                AppLocalizations.of(context)
                                                    .translate('unknown'));
                                          } else {
                                            return input +
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        'rateSymbolIsotopes');
                                          }
                                        }

                                        String isotopeRadioactivity(input) {
                                          if (input.contains('unknown')) {
                                            return Capitalizate(
                                                AppLocalizations.of(context)
                                                    .translate('unknown'));
                                          } else if (input.contains('stable')) {
                                            return Capitalizate(
                                                AppLocalizations.of(context)
                                                    .translate('stable'));
                                          } else {
                                            return Capitalizate(
                                                AppLocalizations.of(context)
                                                    .translate('radioactive'));
                                          }
                                        }

                                        String toTime(input, inner) {
                                          if (input.contains('y')) {
                                            if (double.parse(input.replaceAll(
                                                    ' y', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' y',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('year'));
                                            } else {
                                              return input.replaceAll(
                                                  ' y',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('years'));
                                            }
                                          } else if (input.contains(' d')) {
                                            if (double.parse(input.replaceAll(
                                                    ' d', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' d',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('day'));
                                            } else {
                                              return input.replaceAll(
                                                  ' d',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('days'));
                                            }
                                          } else if (input.contains(' h')) {
                                            if (double.parse(input.replaceAll(
                                                    ' h', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' h',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('hour'));
                                            } else {
                                              return input.replaceAll(
                                                  ' h',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('hours'));
                                            }
                                          } else if (input.contains(' min')) {
                                            if (double.parse(input.replaceAll(
                                                    ' min', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' min',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('minute'));
                                            } else {
                                              return input.replaceAll(
                                                  ' min',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'minutes'));
                                            }
                                          } else if (input.contains(' s')) {
                                            if (double.parse(input.replaceAll(
                                                    ' s', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' s',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate('second'));
                                            } else {
                                              return input.replaceAll(
                                                  ' s',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'seconds'));
                                            }
                                          } else if (input.contains(' ms')) {
                                            if (double.parse(input.replaceAll(
                                                    ' ms', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' ms',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'millisecond'));
                                            } else {
                                              return input.replaceAll(
                                                  ' ms',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'milliseconds'));
                                            }
                                          } else if (input.contains(' ns')) {
                                            if (double.parse(input.replaceAll(
                                                    ' ns', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' ns',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'nanosecond'));
                                            } else {
                                              return input.replaceAll(
                                                  ' ns',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'nanoseconds'));
                                            }
                                          } else if (input.contains(' ps')) {
                                            if (double.parse(input.replaceAll(
                                                    ' ps', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' ps',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'picosecond'));
                                            } else {
                                              return input.replaceAll(
                                                  ' ps',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'picoseconds'));
                                            }
                                          } else if (input.contains(' µs')) {
                                            if (double.parse(input.replaceAll(
                                                    ' µs', '')) <=
                                                1) {
                                              return input.replaceAll(
                                                  ' µs',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'microsecond'));
                                            } else {
                                              return input.replaceAll(
                                                  ' µs',
                                                  ' ' +
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                              'microseconds'));
                                            }
                                          } else if (input == 'unknown') {
                                            //print(input + ': UNKNOWN');
                                          } else if (input == 'stable') {
                                            //print(input + ': STABLE');
                                          } else if (input == '') {
                                            //print(input + ': NULL');
                                          } else {
                                            print(input +
                                                ': ' +
                                                isotopeInfo['isotopes'][inner]
                                                    ['halfRate']);
                                          }

                                          return input;
                                        }

                                        bool isotopeHalflifePointer(input) {
                                          if (input.contains('unknown')) {
                                            return true;
                                          } else if (input.contains('stable')) {
                                            return true;
                                          } else {
                                            return false;
                                          }
                                        }

                                        double isotopeHalflifeVisibility(
                                            input) {
                                          if (input.contains('unknown')) {
                                            return 0;
                                          } else if (input.contains('stable')) {
                                            return 0;
                                          } else {
                                            return 1;
                                          }
                                        }

                                        final listIsotopes = <Widget>[];
                                        listIsotopes.add(Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .15 /
                                                2));
                                        for (var innerIndex = 0;
                                            innerIndex <
                                                isotopeInfo['isotopes'].length;
                                            innerIndex++) {
                                          listIsotopes.add(
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .15 /
                                                      2,
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .15 /
                                                      2),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      150, 150, 150, .2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      (MediaQuery.of(context)
                                                                  .size
                                                                  .height +
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width) /
                                                          2 *
                                                          .03,
                                                    ),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          .15 /
                                                          3),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Tooltip(
                                                        message: AppLocalizations
                                                                .of(context)
                                                            .translate(
                                                                'isotopeName'),
                                                        child: AutoSizeText(
                                                          isotopeInfo['isotopes']
                                                                  [innerIndex][
                                                              AppLocalizations.of(
                                                                      context)
                                                                  .translate(
                                                                      'key')],
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                .07,
                                                          ),
                                                          maxLines: 1,
                                                        ),
                                                      ),
                                                      Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .03,
                                                        ),
                                                      ),
                                                      Tooltip(
                                                        message: AppLocalizations
                                                                .of(context)
                                                            .translate(
                                                                'isotopeWeight'),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              Capitalizate(
                                                                  AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          'weightIsotopes')),
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white70,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                            ),
                                                            AutoSizeText(
                                                              isotopeWeight(isotopeInfo[
                                                                          'isotopes']
                                                                      [
                                                                      innerIndex]
                                                                  ['weight']),
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .03,
                                                        ),
                                                      ),
                                                      Tooltip(
                                                        message:
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'rate'),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              AppLocalizations.of(
                                                                      context)
                                                                  .translate(
                                                                      'rateIsotopes'),
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white70,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                            ),
                                                            AutoSizeText(
                                                              isotopeRate(isotopeInfo[
                                                                          'isotopes']
                                                                      [
                                                                      innerIndex]
                                                                  ['rate']),
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .03,
                                                        ),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Tooltip(
                                                            message: AppLocalizations
                                                                    .of(context)
                                                                .translate(
                                                                    'isotopeRadioactivity'),
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      bottom: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .01),
                                                                  child: Image(
                                                                      image: AssetImage(
                                                                          "lib/icons/radioactive_white_500.png"),
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .04,
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .04),
                                                                ),
                                                                Text(
                                                                  " " +
                                                                      isotopeRadioactivity(isotopeInfo['isotopes']
                                                                              [
                                                                              innerIndex]
                                                                          [
                                                                          'halfRate']),
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .03,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          IgnorePointer(
                                                            ignoring: isotopeHalflifePointer(
                                                                isotopeInfo['isotopes']
                                                                        [
                                                                        innerIndex]
                                                                    [
                                                                    'halfRate']),
                                                            child: Opacity(
                                                              opacity: isotopeHalflifeVisibility(
                                                                  isotopeInfo['isotopes']
                                                                          [
                                                                          innerIndex]
                                                                      [
                                                                      'halfRate']),
                                                              child: Tooltip(
                                                                message: AppLocalizations.of(
                                                                        context)
                                                                    .translate(
                                                                        'isotopeHalflife'),
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              MediaQuery.of(context).size.width * .01),
                                                                      child: Image(
                                                                          image: AssetImage(
                                                                              "lib/icons/halftime_white_500.png"),
                                                                          height: MediaQuery.of(context).size.width *
                                                                              .045,
                                                                          width:
                                                                              MediaQuery.of(context).size.width * .045),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          AutoSizeText(
                                                                        ' ' +
                                                                            toTime(isotopeInfo['isotopes'][innerIndex]['halfRate'],
                                                                                innerIndex),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              MediaQuery.of(context).size.height * .03,
                                                                        ),
                                                                        minFontSize:
                                                                            1,
                                                                        maxLines:
                                                                            1,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        listIsotopes.add(
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .15 /
                                                  2),
                                        );

                                        return Padding(
                                          padding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(children: listIsotopes),
                                          ),
                                        );
                                      } else {
                                        return Row(
                                          children: <Widget>[
                                            Container(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        .15,
                                                    right:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .15),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .7,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        150, 150, 150, .2),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .height +
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width) /
                                                            2 *
                                                            .03,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .15 /
                                                            2),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: <Widget>[
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              '',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .04,
                                                              ),
                                                            ),
                                                            Text(
                                                              '',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                            ),
                                                            Text(
                                                              '',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                            ),
                                                            Text(
                                                              '',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <
                                                                  Widget>[
                                                                Text(
                                                                  '',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .03,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .03,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              '',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .03,
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <
                                                                  Widget>[
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              MediaQuery.of(context).size.width * .01),
                                                                      child:
                                                                          Opacity(
                                                                        opacity:
                                                                            0,
                                                                        child: Image(
                                                                            image: AssetImage(
                                                                                "lib/icons/radioactive_white_500.png"),
                                                                            height: MediaQuery.of(context).size.width *
                                                                                .04,
                                                                            width:
                                                                                MediaQuery.of(context).size.width * .04),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            MediaQuery.of(context).size.height *
                                                                                .03,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom:
                                                                              MediaQuery.of(context).size.width * .01),
                                                                      child:
                                                                          Opacity(
                                                                        opacity:
                                                                            0,
                                                                        child: Image(
                                                                            image: AssetImage(
                                                                                "lib/icons/halftime_white_500.png"),
                                                                            height: MediaQuery.of(context).size.width *
                                                                                .045,
                                                                            width:
                                                                                MediaQuery.of(context).size.width * .045),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        '',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              MediaQuery.of(context).size.height * .03,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation(
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 0,
                                ),
                                child: Tooltip(
                                  message: AppLocalizations.of(context)
                                      .translate('protonnumber'),
                                  child: Text(
                                    AppLocalizations.of(context)
                                            .translate('protons') +
                                        ': ' +
                                        chargedComponents,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .07,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('electronumber'),
                              child: Text(
                                AppLocalizations.of(context)
                                        .translate('electrons') +
                                    ': ' +
                                    chargedComponents,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .15,
                              right: MediaQuery.of(context).size.width * .15,
                            ),
                            child: Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate('neutronnumber'),
                              child: Text(
                                AppLocalizations.of(context)
                                        .translate('neutrons') +
                                    ': ' +
                                    neutron,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
