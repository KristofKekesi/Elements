import 'package:elements_rework/widgets/landing.dart';
import 'package:flutter/material.dart';

import 'cardView.dart';
import 'minimalView.dart';
import 'localization.dart';

enum viewMarker { cards, minimal }

// ignore: camel_case_types
class viewSelector extends StatefulWidget {
  @required final bool typesOthernonmetals;
  @required final bool typesNoblegases;
  @required final bool typesAlkalimetals;
  @required final bool typesAlkaliearthmetals;
  @required final bool typesMetalloids;
  @required final bool typesPosttransitionmetals;
  @required final bool typesTransitionmetals;
  @required final bool typesLanthanoids;
  @required final bool typesActinoids;
  @required final bool typesUnknown;

  @required final double electronnegativityMin;
  @required final double electronnegativityMax;
  @required final bool electronnegativityUnknown;

  @required final int atomicnumberMin;
  @required final int atomicnumberMax;

  @required final int constructorsProtonMin;
  @required final int constructorsProtonMax;

  @required final int constructorsElectronMin;
  @required final int constructorsElectronMax;

  @required final int constructorsNeutronMin;
  @required final int constructorsNeutronMax;

  @required final double weightMin;
  @required final double weightMax;

  @required final bool stateElectronnegativity;
  @required final bool stateTypes;
  @required final bool stateAtomicnumber;
  @required final bool stateConstructors;
  @required final bool stateWeight;

  const viewSelector(
      {Key key, this.typesOthernonmetals, this.typesNoblegases, this.typesAlkalimetals, this.typesAlkaliearthmetals, this.typesMetalloids, this.typesPosttransitionmetals, this.typesTransitionmetals, this.typesLanthanoids, this.typesActinoids, this.typesUnknown, this.electronnegativityMin, this.electronnegativityMax, this.electronnegativityUnknown, this.atomicnumberMin, this.atomicnumberMax, this.constructorsProtonMin, this.constructorsProtonMax, this.constructorsElectronMin, this.constructorsElectronMax, this.constructorsNeutronMin, this.constructorsNeutronMax, this.weightMin, this.weightMax, this.stateElectronnegativity, this.stateTypes, this.stateAtomicnumber, this.stateConstructors, this.stateWeight})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
  viewSelectorState();
}

// ignore: camel_case_types
class viewSelectorState extends State<viewSelector> {
  viewMarker selectredViewMarker = viewMarker.cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(height: MediaQuery.of(context).size.height * .69, child: getView(typesOthernonmetals, typesNoblegases, typesAlkalimetals, typesAlkaliearthmetals, typesMetalloids, typesPosttransitionmetals, typesTransitionmetals, typesLanthanoids, typesActinoids, typesUnknown, electronnegativityMin, electronnegativityMax, electronnegativityUnknown, atomicnumberMin, atomicnumberMax, constructorsProtonMin, constructorsProtonMax, constructorsElectronMin, constructorsElectronMax, constructorsNeutronMin, constructorsNeutronMax, weightMin, weightMax),),
        Row(
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
                    left:    MediaQuery
                            .of(context)
                            .size
                            .width
                        *
                        .1,),
                child: Tooltip(
                  message: AppLocalizations.of(context).translate("cardView"),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width *
                        .35,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height *
                        .1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff62a39c),
                        Color(0xff13547a),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(
                          (MediaQuery
                              .of(context)
                              .size
                              .height +
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width) /
                              2 *
                              .02),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                            image: AssetImage("lib/icons/card_white_500.png"),
                            height: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .06,
                            width:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width *
                                .04),
                        Text(
                          " " + AppLocalizations.of(context).translate('cards'),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width
                                   *
                                  .05),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Tooltip(
                message: AppLocalizations.of(context).translate("minimalView"),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectredViewMarker = viewMarker.minimal;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        right:
                            MediaQuery
                                .of(context)
                                .size
                                .width
                             *
                            .1),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width
                           *
                          .35,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height *
                          .1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff62a39c),
                              Color(0xff13547a),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .02),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                              image:
                              AssetImage("lib/icons/modern_white_500.png"),
                              height: (MediaQuery
                                  .of(context)
                                  .size
                                  .height +
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width) /
                                  2 *
                                  .06,
                              width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width
                                   *
                                  .04),
                          Text(
                            " " +
                                AppLocalizations.of(context)
                                    .translate('minimal'),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery
                                        .of(context)
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
      ],
    );
  }

  Widget getView(cb1, cb2, cb3, cb4, cb5, cb6, cb7, cb8, cb9, cb0, en1, en2, en3, an1, an2,  int prot1, int prot2, int elect1, int elect2, int neut1, int neut2, double minw, double maxw) {
    switch (selectredViewMarker) {
    case viewMarker.cards:
      return cardView(typesOthernonmetals: cb1, typesNoblegases: cb2, typesAlkalimetals: cb3, typesAlkaliearthmetals: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3, an1: an1, an2: an2, prot1: prot1, prot2: prot2, elect1: elect1, elect2: elect2, neut1: neut1, neut2: neut2, minw: minw, maxw: maxw, stateElectronnegativity: stateElectronnegativity, stateTypes: stateTypes, stateAtomicnumber: stateAtomicnumber, stateConstructors: stateConstructors, stateWeight: stateWeight,);
    case viewMarker.minimal:
      return minimalView(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3, an1: an1, an2: an2, prot1: prot1, prot2: prot2, elect1: elect1, elect2: elect2, neut1: neut1, neut2: neut2, minw: minw, maxw: maxw);
    }
    return minimalView(
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
      prot1: prot1, prot2: prot2, elect1: elect1, elect2: elect2, neut1: neut1, neut2: neut2,
    );
    }
}
