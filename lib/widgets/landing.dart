import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:elements_rework/widgets/resultWindow.dart';

import 'elements.dart';

// ignore: camel_case_types
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
                  left: MediaQuery
                      .of(context)
                      .size
                      .width * .1,
                  right: MediaQuery
                      .of(context)
                      .size
                      .width * .25,
                  top: MediaQuery
                      .of(context)
                      .size
                      .height * .02,
                  bottom: MediaQuery
                      .of(context)
                      .size
                      .height * .02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Tooltip(
                      message:
                      AppLocalizations.of(context).translate("menu"),
                      child: Image(
                          image: AssetImage("lib/icons/right_500.png"),
                          height: MediaQuery
                              .of(context)
                              .size
                              .width * .105,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .105),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        " " + AppLocalizations.of(context).translate('modes'),
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery
                                .of(context)
                                .size
                                .width * .12,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: (MediaQuery
                        .of(context)
                        .size
                        .height +
                        MediaQuery
                            .of(context)
                            .size
                            .width) /
                        2 *
                        .05),
                child: AutoSizeText(
                  AppLocalizations.of(context).translate('welcoming'),
                  //AppLocalizations.of(context).translate('title'),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .width * .12,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .size
                        .height * .03,
                    left: (MediaQuery
                        .of(context)
                        .size
                        .height +
                        MediaQuery
                            .of(context)
                            .size
                            .width) /
                        2 *
                        .05),
                child: AutoSizeText(
                  AppLocalizations.of(context).translate('subline'),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .width * .07,
                  ),
                  maxLines: 1,
                ),
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: SafeArea(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ Expanded(child: AutoSizeText(
                          AppLocalizations.of(context).translate('noTests'),
                          maxLines: 1,
                          minFontSize: 1,
                        ),),],),
                      ),),
                    );},
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery
                                .of(context)
                                .size
                                .height * .03,
                            right: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .05,
                            left: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .05),
                        child: Tooltip(
                          message: AppLocalizations.of(context).translate('soon'),
                          child: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .8,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff07da63),
                                  Color(0xff059142),
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
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .1,
                                  right:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * .1),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate('titleTests'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .width * .08),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                          builder: (context) =>
//                      calculations(),),);

                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: SafeArea(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ Expanded(child: AutoSizeText(
                            AppLocalizations.of(context).translate('noCalculations'),
                            maxLines: 1,
                            minFontSize: 1,
                          ),),],),
                          ),),
                      );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery
                                .of(context)
                                .size
                                .height * .03,
                            right: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .05,
                            left: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .05),
                        child: Tooltip(
                          message: AppLocalizations.of(context).translate('soon'),
                          child: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .8,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xfff22447),
                                  Color(0xffb80733),
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
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .1,
                                  right:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * .1),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context).translate(
                                        'titleCalculations'),
                                    //AppLocalizations.of(context).translate('titleCompounds'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .width * .08),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                      Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: SafeArea(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ Expanded(child: AutoSizeText(
                          AppLocalizations.of(context).translate('noCompounds'),
                        maxLines: 1,
                          minFontSize: 1,
                        ),),],),
                        ),),
                    );},
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery
                                .of(context)
                                .size
                                .height * .03,
                            right: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .05,
                            left: (MediaQuery
                                .of(context)
                                .size
                                .height +
                                MediaQuery
                                    .of(context)
                                    .size
                                    .width) /
                                2 *
                                .05),
                        child: Tooltip(
                          message: AppLocalizations.of(context).translate('soon'),
                          child: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .8,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffffcf1b),
                                  Color(0xffff881b),
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
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .1,
                                  right:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * .1),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate('titleCompounds'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .08),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => elements(bottomPadding: MediaQuery.of(context).size.height)),
                      );
                    },
                    child:
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery
                              .of(context)
                              .size
                              .height * .03,
                          right: (MediaQuery
                              .of(context)
                              .size
                              .height +
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width) /
                              2 *
                              .05,
                          left: (MediaQuery
                              .of(context)
                              .size
                              .height +
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width) /
                              2 *
                              .05),
                      child: Tooltip(
                        message: AppLocalizations.of(context)
                            .translate('settings'),
                        child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * .8,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * .1,
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
                        child: Center(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              searchResults(
                                                bottomPadding: MediaQuery.of(context).size.height,

                                                typesOthernonmetals: typesOthernonmetals,
                                                typesNoblegases: typesNoblegases,
                                                typesAlkalimetals: typesAlkalimetals,
                                                typesAlkaliearthmetals:
                                                typesAlkaliearthmetals,
                                                typesMetalloids: typesMetalloids,
                                                typesPosttransitionmetals:
                                                typesPosttransitionmetals,
                                                typesTransitionmetals:
                                                typesTransitionmetals,
                                                typesLanthanoids: typesLanthanoids,
                                                typesActionids: typesActinoids,
                                                typesUnknown: typesUnknown,
                                                electronnegativityMin:
                                                electronnegativityMin,
                                                electronnegativityMax:
                                                electronnegativityMax,
                                                electronnegativityUnknown:
                                                electronnegativityUnknown,
                                                atomicnumberMin: atomicnumberMin,
                                                atomicnumberMax: atomicnumberMax,
                                                constructorsProtonMin:
                                                constructorsProtonMin,
                                                constructorsProtonMax:
                                                constructorsProtonMax,
                                                constructorsElectronMin:
                                                constructorsElectronMin,
                                                constructorsElectronMax:
                                                constructorsElectronMax,
                                                constructorsNeutronMin:
                                                constructorsNeutronMin,
                                                constructorsNeutronMax:
                                                constructorsNeutronMax,
                                                weightMin: weightMin,
                                                weightMax: weightMax,
                                                stateElectronnegativity:
                                                stateElectronnegativity,
                                                stateTypes: stateTypes,
                                                stateAtomicnumber: stateAtomicnumber,
                                                stateConstructors: stateConstructors,
                                                stateWeight: stateWeight,
                                              )),
                                    );
                                  },
                                  child:
                                  Tooltip(message: AppLocalizations.of(context).translate('tooltipElements'), child: Container(color: Color.fromRGBO(0, 0, 0, 0), height: MediaQuery.of(context).size.height * .1, child: Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .1, right: MediaQuery.of(context).size.width * .02,), child: Center(child: Text(
                                    AppLocalizations.of(context)
                                        .translate('titleElements'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                        MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .08),
                                  ),),),),),),
                               Padding(padding: EdgeInsets.only(right: MediaQuery
        .of(context)
        .size
        .width * .1), child: Image(
                                        image: AssetImage(
                                            "lib/icons/settings_white_500.png"),
                                        height: MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .07,
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .07),
                                  ),
                              ],
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
        ],
      ),
    );
  }
}
