import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chem/widgets/localization.dart';
import 'package:flutter_chem/widgets/searchResults.dart';

// ignore: camel_case_types
class landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  top: 20),
              child: Row(
                children: <Widget>[
                  Tooltip(
              message: "" + AppLocalizations.of(context).translate("settings"),
              child:
                  CupertinoContextMenu(
                    child: Icon(CupertinoIcons.settings, size: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                        2 *
                        .085),
                    actions: <Widget>[
                      CupertinoContextMenuAction(
                        child: const Text('English [EN]'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoContextMenuAction(
                        child: const Text('Magyar [HU]'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  ),
                  Text(
                    '  ' + AppLocalizations.of(context).translate('title'),
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .095,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => searchResults(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 20,
                  right: (MediaQuery.of(context).size.height +
                          MediaQuery.of(context).size.width) /
                      2 *
                      .05),
              child: Container(
                width: (MediaQuery.of(context).size.width +
                        MediaQuery.of(context).size.height) /
                    2 *
                    .30,
                height: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    2 *
                    .13,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.deepOrangeAccent,
                    Colors.orangeAccent,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(
                      (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .02),
                ),
                child: Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .06),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
