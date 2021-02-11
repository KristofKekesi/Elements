import 'dart:convert';
import 'dart:ui';

import 'package:elements_rework/widgets/elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'viewSelectorCardView.dart';
import 'viewSelectorOriginalView.dart';
import 'viewSelectorMinimalView.dart';

import 'localization.dart';

enum viewMarker { cards, minimal }

// ignore: camel_case_types
class viewSelector extends StatefulWidget {
  @required
  final double bottomPadding;

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
  final double electronegativityMin;
  @required
  final double electronegativityMax;
  @required
  final bool electronegativityUnknown;

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
  final double isotopenumMin;
  @required
  final double isotopenumMax;

  @required
  final bool proof;
  @required
  final bool hypothetical;

  @required
  final bool stateElectronegativity;
  @required
  final bool stateTypes;
  @required
  final bool stateAtomicnumber;
  @required
  final bool stateConstructors;
  @required
  final bool stateWeight;
  @required
  final bool stateIsotopenum;
  @required
  final bool stateProof;

  const viewSelector(
      {Key key,
      this.bottomPadding,
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
      this.electronegativityMin,
      this.electronegativityMax,
      this.electronegativityUnknown,
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
      this.stateElectronegativity,
      this.stateTypes,
      this.stateAtomicnumber,
      this.stateConstructors,
      this.stateWeight,
      this.isotopenumMin,
      this.isotopenumMax,
      this.stateIsotopenum,
      this.proof,
      this.hypothetical,
      this.stateProof})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => viewSelectorState();
}

// ignore: camel_case_types
class viewSelectorState extends State<viewSelector> {
  viewMarker selectredViewMarker = viewMarker.cards;

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('lib/elements.json'),
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var elementList = json.decode(snapshot.data.toString());
            List passedElements = [];

            final listElements = <Widget>[];
            listElements.add(new Container(
              width: MediaQuery.of(context).size.width * .05,
            ));
            for (var index = 0; index < elementList.length; index++) {
              bool passed = true;

              if (stateElectronegativity == true) {
                if (electronegativityUnknown == true &&
                        elementList[index]['electronegativity'] == 'unknown' ||
                    elementList[index]['electronegativity'] != 'unknown' &&
                        electronegativityMin <=
                            num.parse(
                                elementList[index]['electronegativity']) &&
                        electronegativityMax >=
                            num.parse(
                                elementList[index]['electronegativity'])) {
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
                if (elementList[index]['chargedComponent'] == "-" ||
                    elementList[index]['neutron'] == "-") {
                  passed = false;
                } else {
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

              if (stateIsotopenum == true) {
                if (isotopenumMin <=
                        double.parse(elementList[index]['isotopeNum']) &&
                    isotopenumMax >=
                        double.parse(elementList[index]['isotopeNum'])) {
                } else {
                  passed = false;
                }
              }

              if (proof == true && hypothetical == true) {
              } else if (proof == true &&
                  elementList[index]['discovery'] == 'hypothetical') {
                passed = false;
              } else if (hypothetical == true &&
                  elementList[index]['discovery'] != 'hypothetical') {
                passed = false;
              } else if (proof == false && hypothetical == false) {
                passed = false;
              }

              if (passed == true) {
                passedElements.add(index);
              }
            }

            return Stack(
              children: <Widget>[
                getView(
                  passedElements,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              2 *
                              .02,
                          sigmaY: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              2 *
                              .02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectredViewMarker = viewMarker.cards;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * .1,
                                bottom:
                                    MediaQuery.of(context).size.height * .015,
                                top: MediaQuery.of(context).size.height * .015,
                              ),
                              child: Tooltip(
                                message: AppLocalizations.of(context)
                                    .translate("cardView"),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .35,
                                  height:
                                      MediaQuery.of(context).size.width * .18,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff62a39c),
                                          Color(0xff13547a),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(
                                        (MediaQuery.of(context).size.height +
                                                MediaQuery.of(context)
                                                    .size
                                                    .width) /
                                            2 *
                                            .02),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              "lib/icons/card_white_500.png"),
                                          height: (MediaQuery.of(context)
                                                      .size
                                                      .height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .06,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .04),
                                      Text(
                                        " " +
                                            AppLocalizations.of(context)
                                                .translate('cards'),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .05),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tooltip(
                              message: AppLocalizations.of(context)
                                  .translate("minimalView"),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectredViewMarker = viewMarker.minimal;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width * .1,
                                    bottom: MediaQuery.of(context).size.height *
                                        .015,
                                    top: MediaQuery.of(context).size.height *
                                        .015,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    height:
                                        MediaQuery.of(context).size.width * .18,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xff62a39c),
                                            Color(0xff13547a),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .02),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                            image: AssetImage(
                                                "lib/icons/modern_white_500.png"),
                                            height: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .04),
                                        Text(
                                          " " +
                                              AppLocalizations.of(context)
                                                  .translate('minimal'),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .05),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
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
        });
  }

  Widget getView(List passedElements) {
    switch (selectredViewMarker) {
      case viewMarker.cards:
        return cardView(
          passedElements: passedElements,
        );
      case viewMarker.minimal:
        return minimalView(
          //minimalView(
          passedElements: passedElements,
        );
    }
    return minimalView(
      passedElements: passedElements,
    );
  }
}
