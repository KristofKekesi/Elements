import 'dart:convert';
import 'dart:ui';

import 'package:elements_rework/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

// ignore: camel_case_types
class cardView extends StatelessWidget {
  @required
  final bool typesOthernonmetals;
  @required
  final bool typesNoblegases;
  @required
  final bool typesAlkalimetals;
  @required
  final bool typesAlkaliearthmetals;
  @required
  final bool typesMetalloids;
  @required
  final bool typesPosttransitionmetals;
  @required
  final bool typesTransitionmetals;
  @required
  final bool typesLanthanoids;
  @required
  final bool typesActinoids;
  @required
  final bool typesUnknown;

  @required
  final double electronnegativityMin;
  @required
  final double electronnegativityMax;
  @required
  final bool electronnegativityUnknown;

  @required
  final int atomicnumberMin;
  @required
  final int atomicnumberMax;

  @required
  final int constructorsProtonMin;
  @required
  final int constructorsProtonMax;

  @required
  final int constructorsElectronMin;
  @required
  final int constructorsElectronMax;

  @required
  final int constructorsNeutronMin;
  @required
  final int constructorsNeutronMax;

  @required
  final double weightMin;
  @required
  final double weightMax;

  @required
  final bool stateElectronnegativity;
  @required
  final bool stateTypes;
  @required
  final bool stateAtomicnumber;
  @required
  final bool stateConstructors;
  @required
  final bool stateWeight;

  const cardView({
    Key key,
    this.typesOthernonmetals,
    this.typesNoblegases,
    this.typesAlkalimetals,
    this.typesAlkaliearthmetals,
    this.typesMetalloids,
    this.typesPosttransitionmetals,
    this.typesTransitionmetals,
    this.typesLanthanoids,
    this.typesActinoids,
    this.typesUnknown,
    this.electronnegativityMin,
    this.electronnegativityMax,
    this.electronnegativityUnknown,
    this.atomicnumberMin,
    this.atomicnumberMax,
    this.constructorsProtonMin,
    this.constructorsProtonMax,
    this.constructorsElectronMin,
    this.constructorsElectronMax,
    this.constructorsNeutronMin,
    this.constructorsNeutronMax,
    this.weightMin,
    this.weightMax,
    this.stateElectronnegativity,
    this.stateTypes,
    this.stateAtomicnumber,
    this.stateConstructors,
    this.stateWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int pass = 0;

    return new FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('lib/elements.json'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var elementList = json.decode(snapshot.data.toString());
          final listElements = <Widget>[];
          listElements.add(new Container(
            width: MediaQuery.of(context).size.width * .05,
          ));
          for (var index = 0; index < elementList.length; index++) {
            bool passed = true;

            if (stateElectronnegativity == true) {
              if (electronnegativityUnknown == true &&
                      elementList[index]['electronnegativity'] == 'unknown' ||
                  elementList[index]['electronnegativity'] != 'unknown' &&
                      electronnegativityMin <=
                          num.parse(elementList[index]['electronnegativity']) &&
                      electronnegativityMax >=
                          num.parse(elementList[index]['electronnegativity'])) {
              } else {
                passed = false;
              }
            }

            if (stateTypes == true) {
              if (typesOthernonmetals == true &&
                      elementList[index]['type'] == 'otherNonmetal' ||
                  typesNoblegases == true &&
                      elementList[index]['type'] == 'nobleGas' ||
                  typesAlkalimetals == true &&
                      elementList[index]['type'] == 'alkaliMetal' ||
                  typesAlkaliearthmetals == true &&
                      elementList[index]['type'] == 'alkaliEarthMetal' ||
                  typesMetalloids == true &&
                      elementList[index]['type'] == 'metalloid' ||
                  typesPosttransitionmetals == true &&
                      elementList[index]['type'] == 'post-transitionMetal' ||
                  typesTransitionmetals == true &&
                      elementList[index]['type'] == 'transitionMetal' ||
                  typesLanthanoids == true &&
                      elementList[index]['type'] == 'lanthanoid' ||
                  typesActinoids == true &&
                      elementList[index]['type'] == 'actinoid' ||
                  typesUnknown == true &&
                      elementList[index]['type'] == 'unknown') {
              } else {
                passed = false;
              }
            }

            if (stateAtomicnumber == true) {
              if (atomicnumberMin <= elementList[index]['number'] &&
                  atomicnumberMax >= elementList[index]['number']) {
              } else {
                passed = false;
              }
            }

            if (stateConstructors == true) {
              if (constructorsProtonMin <=
                      int.parse(elementList[index]['chargedComponent']) &&
                  constructorsProtonMax >=
                      int.parse(elementList[index]['chargedComponent']) &&
                  constructorsElectronMin <=
                      int.parse(elementList[index]['chargedComponent']) &&
                  constructorsElectronMax >=
                      int.parse(elementList[index]['chargedComponent']) &&
                  constructorsNeutronMin <=
                      int.parse(elementList[index]['neutron']) &&
                  constructorsNeutronMax >=
                      int.parse(elementList[index]['neutron'])) {
              } else {
                passed = false;
              }
            }

            if (stateWeight == true) {
              if (weightMin <=
                      double.parse(elementList[index]['weight']
                          .replaceAll('(', '')
                          .replaceAll(')', '')) &&
                  weightMax >=
                      double.parse(elementList[index]['weight']
                          .replaceAll('(', '')
                          .replaceAll(')', ''))) {
              } else {
                passed = false;
              }
            }

            if (passed == true) {
              pass++;

              String isotopeWeight(input) {
                if (input.contains('unknown')) {
                  return Capitalizate(AppLocalizations.of(context).translate('unknown'));
                } else {
                  return input;
                }
              }

              String isotopeRate(input) {
                if (input.contains('unknown')) {
                  return Capitalizate(AppLocalizations.of(context).translate('unknown'));
                } else {
                  return input + AppLocalizations.of(context).translate('rateSymbolIsotopes');
                }
              }

              final listIsotopes = <Widget>[];
              listIsotopes.add(Container(width: MediaQuery.of(context).size.width * .15 / 2));
              for (var innerIndex = 0;
                  innerIndex < elementList[index]['isotopes'].length;
                  innerIndex++) {
                listIsotopes.add(
                  new Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .15 / 2, right: MediaQuery.of(context).size.width * .15 / 2),child: Container(
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(150, 150, 150, .4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              2 *
                              .03,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .15 / 2),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Tooltip(
                      message: AppLocalizations.of(context).translate('isotopeName'),
                        child: Text(
                          elementList[index]['isotopes'][innerIndex][AppLocalizations.of(context).translate('key')], style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .035,
                        ),),
                        ),
                        Text(
                          '', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .03,
                        ),),
                        Tooltip(
                          message: AppLocalizations.of(context).translate('isotopeWeight'),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                        Text(
                          Capitalizate(AppLocalizations.of(context).translate('weightIsotopes')), style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .03,
                        ),),
                        Text(
                          isotopeWeight(elementList[index]['isotopes'][innerIndex]['weight']), style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .03,
                        ),),],),),
                        Text(
                          '', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .03,
                        ),),
                        Tooltip(
                          message: AppLocalizations.of(context).translate('rate'),
                          child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget> [
                        Text(
                          AppLocalizations.of(context).translate('rateIsotopes'),
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .03,
                        ),),
                        Text(
                          isotopeRate(elementList[index]['isotopes'][innerIndex]['rate']), style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context)
                              .size
                              .height *
                              .03,
                        ),),
                  ],
                  ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  ),
                );
              }
              listIsotopes.add(Container(width: MediaQuery.of(context).size.width * .15 / 2));

              listElements.add(
                new GestureDetector(
                  onTap: () {
                    // ignore: non_constant_identifier_names
                    String Capitalizate(input) {
                      return input[0].toUpperCase() + input.substring(1);
                    }

                    // ignore: non_constant_identifier_names
                    String ElectronnegativityText(input) {
                      if (input == 'unknown') {
                        return Capitalizate(
                            AppLocalizations.of(context).translate('unknown'));
                      } else {
                        return input;
                      }
                    }

                    String consistencyIcon() {
                      if (elementList[index]["consistency"] == "gas") {
                        return "lib/icons/gas_white_500.png";
                      } else if (elementList[index]["consistency"] == "fluid") {
                        return "lib/icons/fluid_white_500.png";
                      } else if (elementList[index]["consistency"] == "solid") {
                        return "lib/icons/solid_white_500.png";
                      } else {
                        return "lib/icons/questionmark_white_500.png";
                      }
                    }

                    String consistencyText() {
                      if (elementList[index]["consistency"] == "gas") {
                        return " " +
                            Capitalizate(
                                AppLocalizations.of(context).translate("gas"));
                      } else if (elementList[index]["consistency"] == "fluid") {
                        return " " +
                            Capitalizate(AppLocalizations.of(context)
                                .translate("fluid"));
                      } else if (elementList[index]["consistency"] == "solid") {
                        return " " +
                            Capitalizate(AppLocalizations.of(context)
                                .translate("solid"));
                      } else {
                        return " " +
                            Capitalizate(AppLocalizations.of(context)
                                .translate("unknown"));
                      }
                    }

                    String discoveryText() {
                      if (elementList[index]["discovery"] == "ancient") {
                        return ' ' +
                            Capitalizate(AppLocalizations.of(context)
                                .translate("ancient"));
                      } else {
                        return ' ' + elementList[index]["discovery"];
                      }
                    }

                    String radioactivityString() {
                      if (elementList[index]["radioactivity"] == "stable") {
                        return " " +
                            Capitalizate(AppLocalizations.of(context)
                                .translate("stable"));
                      } else {
                        String list = " ";
                        if (elementList[index]["gamma"] == true) {
                          list += Capitalizate(AppLocalizations.of(context)
                                  .translate("gamma")) +
                              " ";
                        } else if (elementList[index]["beta"] == true) {
                          list += Capitalizate(AppLocalizations.of(context)
                                  .translate("beta")) +
                              " ";
                        } else if (elementList[index]["alpha"] == true) {
                          list += Capitalizate(AppLocalizations.of(context)
                                  .translate("alpha")) +
                              " ";
                        } else if (elementList[index]
                                ["multipleRadiationEmitters"] ==
                            true) {
                          list += Capitalizate(AppLocalizations.of(context)
                                  .translate("multipleRadiationEmitters") +
                              " ");
                        } else {
                          list = " " +
                              Capitalizate(AppLocalizations.of(context)
                                  .translate("radioactive"));
                        }
                        return list;
                      }
                    }

                    String typeText() {
                      return Capitalizate(AppLocalizations.of(context)
                          .translate(elementList[index]["type"]));
                    }

                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return DraggableScrollableSheet(
                              initialChildSize: .56,
                              maxChildSize: 1,
                              builder:
                                  (BuildContext context, scrollController) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                          2 *
                                          .1,
                                    ),
                                    topRight: Radius.circular(
                                        (MediaQuery.of(context).size.height +
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
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 30,
                                              bottom: 30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Tooltip(
                                                message: AppLocalizations.of(
                                                        context)
                                                    .translate("elementName"),
                                                child: Text(
                                                  elementList[index][
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate("key")],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    height: 1.2,
                                                    fontSize: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width *
                                                        (1 /
                                                            int.parse(AppLocalizations
                                                                    .of(context)
                                                                .translate(
                                                                    "maxVolume"))),
                                                  ),
                                                ),
                                              ),
                                      ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                 left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                    right: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                        .15,
                                                  bottom: (MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .height +
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width) /
                                                      2 *
                                                      .05,
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    Tooltip(
                                                      message: AppLocalizations
                                                              .of(context)
                                                          .translate("symbol"),
                                                      child: Text(
                                                        elementList[index]
                                                                ["element"] +
                                                            ', ',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              (1 /
                                                                  int.parse(AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          "maxVolume"))),
                                                        ),
                                                      ),
                                                    ),
                                                    Tooltip(
                                                      message: AppLocalizations
                                                              .of(context)
                                                          .translate(
                                                              "elementNumber"),
                                                      child: Text(
                                                        elementList[index]
                                                                ["number"]
                                                            .toString(),
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              (1 /
                                                                  int.parse(AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          "maxVolume"))),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Tooltip(
                                                message: AppLocalizations.of(
                                                        context)
                                                    .translate("consistency"),
                                                child: Row(
                                                  children: <Widget>[
                                                    Image(
                                                        image: AssetImage(
                                                            consistencyIcon()),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .07,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .07),
                                                    Text(
                                                      consistencyText(),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .08,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                    ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Tooltip(
                                                message: Capitalizate(
                                                  AppLocalizations.of(context)
                                                      .translate("discovery"),
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/icons/discovery_white_500.png"),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .07,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .07),
                                                    Text(
                                                      discoveryText(),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .08,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Tooltip(
                                                message: AppLocalizations.of(
                                                        context)
                                                    .translate("radioactivity"),
                                                child: Row(
                                                  children: <Widget>[
                                                    Image(
                                                        image: AssetImage(
                                                            "lib/icons/radioactive_white_500.png"),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .07,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .07),
                                                    Text(
                                                      " " +
                                                          radioactivityString(),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .08,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .01,
                                                      bottom:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .05),
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'radioactivityInfo'),
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .06,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Tooltip(
                                                message:
                                                    AppLocalizations.of(context)
                                                        .translate("type"),
                                                child: Text(
                                                  typeText(),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .08,
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                    right: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                        .15,
                                                  top: (MediaQuery.of(context)
                                                              .size
                                                              .height +
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width) /
                                                      2 *
                                                      .05,
                                                ),
                                                child: Tooltip(
                                                  message: AppLocalizations.of(
                                                          context)
                                                      .translate(
                                                          "electronnegativity"),
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                            .translate(
                                                                "electronnegativityPre") +
                                                        ": " +
                                                        ElectronnegativityText(
                                                            elementList[index][
                                                                "electronnegativity"]),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .08,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,),
                                                child:
                                              Tooltip(
                                                message:
                                                    AppLocalizations.of(context)
                                                        .translate("block"),
                                                child: Text(
                                                  Capitalizate(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  "blockPre")) +
                                                      ": " +
                                                      Capitalizate(
                                                          elementList[index]
                                                              ["block"]),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .08,
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                ),
                                                child:
                                              Tooltip(
                                                message:
                                                    AppLocalizations.of(context)
                                                        .translate("weight"),
                                                child: Text(
                                                  Capitalizate(AppLocalizations
                                                              .of(context)
                                                          .translate(
                                                              "weightPre")) +
                                                      ": " +
                                                      Capitalizate(
                                                          elementList[index]
                                                              ["weight"]),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .08,
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                  bottom: (MediaQuery.of(context)
                                                      .size
                                                      .height +
                                                      MediaQuery.of(
                                                          context)
                                                          .size
                                                          .width) /
                                                      2 *
                                                      .05,
                                                ),
                                                child:
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .6,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .01),
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                        .translate('molarmass'),
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .06,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                bottom: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .height * .01,
                                                right: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    .15,
                                                ),
                                                child: Tooltip(
                                                  message: AppLocalizations.of(context).translate('isotopeTitle').replaceAll('{elementName}', elementList[index][AppLocalizations.of(context).translate('key')]),
                                                  child: Text(
                                                  AppLocalizations.of(context).translate('isotopes'),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                        .08,
                                                  ),
                                                ),
                                              ),
                                              ),
                                              SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(children: listIsotopes),
                                                ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  .15,
                                                right: MediaQuery.of(context)
                                                   .size
                                                   .width *
                                                   .15,
                                                ),
                                                child:
                                              Container(
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    top: (MediaQuery.of(context)
                                                                .size
                                                                .height +
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width) /
                                                        2 *
                                                        .05,
                                                  ),
                                                  child: Tooltip(
                                                    message:
                                                        AppLocalizations.of(
                                                                context)
                                                            .translate(
                                                                'protonnumber'),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'protons') +
                                                          ': ' +
                                                          elementList[index][
                                                              'chargedComponent'],
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .08,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                ),
                                                child:
                                              Tooltip(
                                                message:
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'electronnumber'),
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                          .translate(
                                                              'electrons') +
                                                      ': ' +
                                                      elementList[index]
                                                          ['chargedComponent'],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .08,
                                                  ),
                                                ),
                                              ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                  right: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      .15,
                                                ),
                                                child:
                                              Tooltip(
                                                message: AppLocalizations.of(
                                                        context)
                                                    .translate('neutronnumber'),
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                          .translate(
                                                              'neutrons') +
                                                      ': ' +
                                                      elementList[index]
                                                          ['neutron'],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .08,
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
                                );
                              });
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .05,
                      right: MediaQuery.of(context).size.width * .05,
                      bottom: MediaQuery.of(context).size.height * .035,
                    ),
                    decoration: new BoxDecoration(
                        color: Color(int.parse(elementList[index]["m1"])),
                        image: DecorationImage(
                          image: AssetImage(
                              "lib/backgrounds/" + elementList[index]["bg"]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: new BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02 +
                                10)),
                    height: MediaQuery.of(context).size.height * .9,
                    width: MediaQuery.of(context).size.width * .8,
                    child: new Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Padding(
                            padding: EdgeInsets.only(
                                top: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02,
                                left: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  elementList[index]["number"].toString(),
                                  textAlign: TextAlign.left,
                                  style: new TextStyle(
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 8.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: (MediaQuery.of(context)
                                                .size
                                                .height +
                                            MediaQuery.of(context).size.width) /
                                        2 *
                                        .1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: new Padding(
                            padding: EdgeInsets.only(
                                bottom: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04,
                                left: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04),
                            child: new Align(
                              alignment: Alignment.bottomLeft,
                              child: RichText(
                                text: TextSpan(
                                  style: new TextStyle(
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 8.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: (MediaQuery.of(context)
                                                .size
                                                .height +
                                            MediaQuery.of(context).size.width) /
                                        2 *
                                        .06,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: elementList[index]["element"],
                                        style: TextStyle(
                                          shadows: <Shadow>[
                                            Shadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 8.0,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ],
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .1,
                                        )),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                      text: elementList[index][
                                          AppLocalizations.of(context)
                                              .translate("key")],
                                    ),
                                  ],
                                ),
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

          listElements.add(new Container(
            width: MediaQuery.of(context).size.width * .05,
          ));

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
            return new Tooltip(
              message:
                  AppLocalizations.of(context).translate("moreAboutElement"),
              child: new ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: listElements,
              ),
            );
          }
        }
        return SleekCircularSlider(
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
          ),
        );
      },
    );
  }
}
