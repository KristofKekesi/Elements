import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:elements_rework/widgets/resultWindow.dart';
import 'elements.dart';

class landing extends StatelessWidget {
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
                  right: MediaQuery.of(context).size.width * .25,
                  top: MediaQuery.of(context).size.height * .02,
                  bottom: MediaQuery.of(context).size.height * .02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'Elements',
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
          Column(
            children: <Widget>[
              Tooltip(
                message:
                AppLocalizations.of(context).translate('soon'),
                child: GestureDetector(
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
                      child: Center(
                        child: Text(
                          'Tests',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              MediaQuery.of(context).size.width * .08),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Tooltip(
                message:
                    AppLocalizations.of(context).translate('soon'),
                child: GestureDetector(
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
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffffcf1b),
                              Color(0xffff881b),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .02),
                      ),
                      child: Center(
                        child: Text(
                          'Compounds',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * .08),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Tooltip(
                message:
                AppLocalizations.of(context).translate('searchTooltip'),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          searchResults(
                            typesOthernonmetals: typesOthernonmetals,
                            typesNoblegases: typesNoblegases,
                            typesAlkalimetals: typesAlkalimetals,
                            typesAlkaliearthmetals: typesAlkaliearthmetals,
                            typesMetalloids: typesMetalloids,
                            typesPosttransitionmetals: typesPosttransitionmetals,
                            typesTransitionmetals: typesTransitionmetals,
                            typesLanthanoids: typesLanthanoids,
                            typesActionids: typesActinoids,
                            typesUnknown: typesUnknown,
                            electronnegativityMin: electronnegativityMin,
                            electronnegativityMax: electronnegativityMax,
                            electronnegativityUnknown: electronnegativityUnknown,
                            atomicnumberMin: atomicnumberMin,
                            atomicnumberMax: atomicnumberMax,
                            constructorsProtonMin: constructorsProtonMin,
                            constructorsProtonMax: constructorsProtonMax,
                            constructorsElectronMin: constructorsElectronMin,
                            constructorsElectronMax: constructorsElectronMax,
                            constructorsNeutronMin: constructorsNeutronMin,
                            constructorsNeutronMax: constructorsNeutronMax,
                            weightMin: weightMin,
                            weightMax: weightMax,

                            stateElectronnegativity: stateElectronnegativity,
                            stateTypes: stateTypes,
                            stateAtomicnumber: stateAtomicnumber,
                            stateConstructors: stateConstructors,
                            stateWeight: stateWeight,
                          )
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
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff62a39c),
                              Color(0xff13547a),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                                2 *
                                .02),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .1, right: MediaQuery.of(context).size.width * .1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                          Text(
                          'Elements',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                              MediaQuery.of(context).size.width * .08),
                        ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          elements()
                                  ),
                                );
                              },
                              child: Tooltip(
                                message: AppLocalizations.of(context).translate("back"),
                                child: Image(
                                    image: AssetImage("lib/icons/settings_white_500.png"),
                                    height: MediaQuery.of(context).size.width * .07,
                                    width: MediaQuery.of(context).size.width * .07),
                              ),
                            ),
                        ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
