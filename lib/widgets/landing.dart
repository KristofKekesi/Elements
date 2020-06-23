import 'dart:ui';

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
<<<<<<< Updated upstream
=======
          Padding(
            padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    2 *
                    .03,
                bottom: 20,
                right: (MediaQuery.of(context).size.height +
                        MediaQuery.of(context).size.width) /
                    2 *
                    .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          initialChildSize: .82,
                          maxChildSize: .82,
                          builder: (BuildContext context, scrollController) {
                            return SingleChildScrollView(
                              controller: scrollController,
                              child: ClipRRect(borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)), child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20), child: Container(
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 30, bottom: 70),
                                        child: Text(
                                          AppLocalizations.of(context).translate(
                                                  'electronnegativitySelector') +
                                              ':',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                      SleekCircularSlider(
                                        initialValue: 1,
                                        min: 0,
                                        max: 4,
                                        appearance: CircularSliderAppearance(
                                          infoProperties: InfoProperties(
                                            modifier: percentageModifier,
                                            topLabelStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            mainLabelStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 35),
                                            topLabelText:
                                                AppLocalizations.of(context)
                                                    .translate('sliderMin'),
                                          ),
                                          customColors: CustomSliderColors(
                                            trackColor: Colors.white,
                                            hideShadow: true,
                                            progressBarColors: <Color>[
                                              Colors.orangeAccent,
                                              Colors.deepOrangeAccent,
                                            ],
                                          ),
                                        ),
                                        onChangeEnd: (v) {
                                          print(v.toStringAsFixed(2));
                                        },
                                      ),
                                      SleekCircularSlider(
                                        initialValue: 3,
                                        min: 0,
                                        max: 4,
                                        appearance: CircularSliderAppearance(
                                          infoProperties: InfoProperties(
                                            modifier: percentageModifier,
                                            topLabelStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            mainLabelStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 35),
                                            topLabelText:
                                                AppLocalizations.of(context)
                                                    .translate('sliderMax'),
                                          ),
                                          customColors: CustomSliderColors(
                                            trackColor: Colors.white,
                                            hideShadow: true,
                                            progressBarColors: <Color>[
                                              Colors.orangeAccent,
                                              Colors.deepOrangeAccent,
                                            ],
                                          ),
                                        ),
                                        onChangeEnd: (v) {
                                          print(v.toStringAsFixed(2));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Tooltip(
                    message: AppLocalizations.of(context)
                        .translate('electronnegativitySelector'),
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('electronnegativityMinSelector'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .08,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return DraggableScrollableSheet(
                          builder: (BuildContext context, scrollController) {
                            bool _cb1 = true;

                            return SingleChildScrollView(
                              controller: scrollController,
                              child: ClipRRect(borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)), child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20), child: Container(
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 30, bottom: 70),
                                        child: Text(
                                          AppLocalizations.of(context)
                                                  .translate('types') +
                                              ':',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                      CheckboxListTile(
                                        title: Text('Type 1'),
                                        controlAffinity:
                                            ListTileControlAffinity.platform,
                                        value: _cb1,
                                        onChanged: (bool value) {
                                          setState(() {
                                            _cb1 = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Tooltip(
                    message: AppLocalizations.of(context).translate('types'),
                    child: Text(
                      AppLocalizations.of(context).translate('types'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
>>>>>>> Stashed changes
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
