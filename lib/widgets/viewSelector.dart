import 'package:elements_rework/widgets/landing.dart';
import 'package:flutter/material.dart';

import 'cardView.dart';
import 'minimalView.dart';
import 'localization.dart';

enum viewMarker { cards, minimal }

// ignore: camel_case_types
class viewSelector extends StatefulWidget {
  @required final bool cb1;
  @required final bool cb2;
  @required final bool cb3;
  @required final bool cb4;
  @required final bool cb5;
  @required final bool cb6;
  @required final bool cb7;
  @required final bool cb8;
  @required final bool cb9;
  @required final bool cb0;

  @required final double en1;
  @required final double en2;
  @required final bool en3;

  @required final int an1;
  @required final int an2;

  @required final int prot1;
  @required final int prot2;

  @required final int elect1;
  @required final int elect2;

  @required final int neut1;
  @required final int neut2;

  @required final double minw;
  @required final double maxw;

  const viewSelector(
      {Key key, this.cb1, this.cb2, this.cb3, this.cb4, this.cb5, this.cb6, this.cb7, this.cb8, this.cb9, this.cb0, this.en1, this.en2, this.en3, this.an1, this.an2, this.prot1, this.prot2, this.elect1, this.elect2, this.neut1, this.neut2, this.minw, this.maxw})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
  viewSelectorState(
      this.cb1,
      this.cb2,
      this.cb3,
      this.cb4,
      this.cb5,
      this.cb6,
      this.cb7,
      this.cb8,
      this.cb9,
      this.cb0,
      this.en1,
      this.en2,
      this.en3,
    this.prot1,
    this.prot2,
    this.elect1,
    this.elect2,
    this.neut1,
    this.neut2,
    this.minw,
    this.maxw,
  );
}

// ignore: camel_case_types
class viewSelectorState extends State<viewSelector> {
  viewMarker selectredViewMarker = viewMarker.cards;

  viewSelectorState(bool cb1, bool cb2, bool cb3, bool cb4, bool cb5, bool cb6, bool cb7, bool cb8, bool cb9, bool cb0, double en1, double en2, bool en3, int prot1, int prot2, int elect1, int elect2, int neut1, int neut2, double minw, double maxw);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(height: MediaQuery.of(context).size.height * .69, child: getView(cb1, cb2, cb3, cb4, cb5, cb6, cb7, cb8, cb9, cb0, en1, en2, en3, an1, an2, prot1, prot2, elect1, elect2, neut1, neut2, minw, maxw),),
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
      return cardView(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3, an1: an1, an2: an2, prot1: prot1, prot2: prot2, elect1: elect1, elect2: elect2, neut1: neut1, neut2: neut2, minw: minw, maxw: maxw);
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
