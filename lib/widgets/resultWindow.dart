import 'package:flutter_chem/widgets/localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_chem/widgets/viewSelector.dart';

import 'minimalView.dart';
import 'cardView.dart';

// ignore: camel_case_types
class searchResults extends StatelessWidget {
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

  const searchResults({Key key, this.cb1, this.cb2, this.cb3, this.cb4, this.cb5, this.cb6, this.cb7, this.cb8, this.cb9, this.cb0, this.en1, this.en2, this.en3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        2 *
                        .05,
                    top: 20,
                bottom: 20),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Tooltip(
                        message: AppLocalizations.of(context).translate("back"),
                        child: Image(
                          image: AssetImage("lib/icons/left_500.png"),
                          height:                             MediaQuery.of(context).size.width *
                              .105,
                          width:
                                  MediaQuery.of(context).size.width *
                              .105),
                    ),
                    ),
                    Text(
                      ' ' + AppLocalizations.of(context).translate('title'),
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
            viewSelector(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3,),
            //cardView(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3,),
            //minimalView(cb1: cb1, cb2: cb2, cb3: cb3, cb4: cb4, cb5: cb5, cb6: cb6, cb7: cb7, cb8: cb8, cb9: cb9, cb0: cb0, en1: en1, en2: en2, en3: en3,),
          ],
        ),
      ),
    );
  }
}
