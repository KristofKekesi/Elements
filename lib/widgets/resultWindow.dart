import 'package:elements_rework/widgets/localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:elements_rework/widgets/viewSelector.dart';

// ignore: camel_case_types
class searchResults extends StatelessWidget {
  @required final bool typesOthernonmetals;
  @required final bool typesNoblegases;
  @required final bool typesAlkalimetals;
  @required final bool typesAlkaliearthmetals;
  @required final bool typesMetalloids;
  @required final bool typesPosttransitionmetals;
  @required final bool typesTransitionmetals;
  @required final bool typesLanthanoids;
  @required final bool typesActionids;
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

  const searchResults(
      {Key key,
      this.typesOthernonmetals,
      this.typesNoblegases,
      this.typesAlkalimetals,
      this.typesAlkaliearthmetals,
      this.typesMetalloids,
      this.typesPosttransitionmetals,
      this.typesTransitionmetals,
      this.typesLanthanoids,
      this.typesActionids,
      this.typesUnknown,
      this.electronnegativityMin,
      this.electronnegativityMax,
      this.electronnegativityUnknown, this.atomicnumberMin, this.atomicnumberMax, this.constructorsProtonMin, this.constructorsProtonMax, this.constructorsElectronMin, this.constructorsElectronMax, this.constructorsNeutronMin, this.constructorsNeutronMax, this.weightMin, this.weightMax, this.stateElectronnegativity, this.stateTypes, this.stateAtomicnumber, this.stateConstructors, this.stateWeight})
      : super(key: key);

  double indicatorOpacity() {
    if (stateElectronnegativity == true || stateTypes == true || stateAtomicnumber == true || stateConstructors == true || stateWeight == true) {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left:
                            MediaQuery.of(context).size.width *
                        .1,
                  right:
                  MediaQuery.of(context).size.width *
                      .1,
                    top: MediaQuery.of(context).size.height * .02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Tooltip(
                        message: AppLocalizations.of(context).translate("back"),
                        child: Image(
                            image: AssetImage("lib/icons/left_500.png"),
                            height: MediaQuery.of(context).size.width * .105,
                            width: MediaQuery.of(context).size.width * .105),
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context).translate('title'),
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * .12,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * .01),
                      child:
                          IgnorePointer(ignoring: stateElectronnegativity == false && stateTypes == false && stateAtomicnumber == false && stateConstructors == false && stateWeight == false,
                          child:
                    Opacity(
                      opacity: indicatorOpacity(),
                      child:
                      Tooltip(
                      message: AppLocalizations.of(context).translate("selectorIndicator"),
                      child: Image(
                          image: AssetImage("lib/icons/triangle_yellow_500.png"),
                          height: MediaQuery.of(context).size.width * .095,
                          width: MediaQuery.of(context).size.width * .095),
                    ),
                    ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            viewSelector(
              typesOthernonmetals: typesOthernonmetals,
              typesNoblegases: typesNoblegases,
              typesAlkalimetals: typesAlkalimetals,
              typesAlkaliearthmetals: typesAlkaliearthmetals,
              typesMetalloids: typesMetalloids,
              typesPosttransitionmetals: typesPosttransitionmetals,
              typesTransitionmetals: typesTransitionmetals,
              typesLanthanoids: typesLanthanoids,
              typesActinoids: typesActionids,
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
            ),
          ],
        ),
      ),
    );
  }
}
