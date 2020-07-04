import 'package:flutter/material.dart';

import 'cardView.dart';
import 'minimalView.dart';
import 'localization.dart';

enum viewMarker { cards, minimal }

// ignore: camel_case_types
class viewSelector extends StatefulWidget {
  final bool cb1;
  final bool cb2;
  final bool cb3;
  final bool cb4;
  final bool cb5;
  final bool cb6;
  final bool cb7;
  final bool cb8;
  final bool cb9;
  final bool cb0;

  final double en1;
  final double en2;
  final bool en3;

  const viewSelector(
      {Key key, this.cb1, this.cb2, this.cb3, this.cb4, this.cb5, this.cb6, this.cb7, this.cb8, this.cb9, this.cb0, this.en1, this.en2, this.en3})
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
          this.en3);
}

// ignore: camel_case_types
class viewSelectorState extends State<viewSelector> {
  final bool cb1;
  final bool cb2;
  final bool cb3;
  final bool cb4;
  final bool cb5;
  final bool cb6;
  final bool cb7;
  final bool cb8;
  final bool cb9;
  final bool cb0;

  final double en1;
  final double en2;
  final bool en3;

  viewSelectorState(this.cb1, this.cb2, this.cb3, this.cb4, this.cb5, this.cb6,
      this.cb7, this.cb8, this.cb9, this.cb0, this.en1, this.en2, this.en3);

  viewMarker selectredViewMarker = viewMarker.cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(height: MediaQuery.of(context).size.height * .70, child:getView(cb1, cb2, cb3, cb4, cb5, cb6, cb7, cb8, cb9, cb0, en1, en2, en3),),
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

  Widget getView(cb1, cb2, cb3, cb4, cb5, cb6, cb7, cb8, cb9, cb0, en1, en2, en3) {
    switch (selectredViewMarker) {
    case viewMarker.cards:
      return cardView(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3,);
    case viewMarker.minimal:
      return minimalView(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3,);
    }
    return minimalView(cb1: cb1,
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
      en3: en3,);
    }
}
