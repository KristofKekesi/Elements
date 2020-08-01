import 'package:elements_rework/widgets/localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:elements_rework/widgets/viewSelector.dart';

import 'minimalView.dart';
import 'cardView.dart';

// ignore: camel_case_types
class searchResults extends StatelessWidget {
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

  const searchResults(
      {Key key,
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
      this.en3, this.an1, this.an2, this.prot1, this.prot2, this.elect1, this.elect2, this.neut1, this.neut2, this.minw, this.maxw})
      : super(key: key);

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
                    top: MediaQuery.of(context).size.height * .02,
                ),
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
                            height: MediaQuery.of(context).size.width * .105,
                            width: MediaQuery.of(context).size.width * .105),
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
            viewSelector(
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
              prot1: prot1,
              prot2: prot2,
              elect1: elect1,
              elect2: elect2,
              neut1: neut1,
              neut2: neut2,
              minw: minw,
              maxw: maxw,
            ),
          ],
        ),
      ),
    );
  }
}
