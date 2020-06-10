import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chem/widgets/localization.dart';

// ignore: camel_case_types
class minimalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new FutureBuilder(
        builder: (context, snapshot) {
          var elementList = json.decode(snapshot.data.toString());
          return new Tooltip(
            message: AppLocalizations.of(context).translate("moreAboutElement"),
            child: new ListView.builder(
              shrinkWrap: true,
              itemCount: elementList.length,
              cacheExtent: 100.0,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    String consistencyIcon() {
                      if (elementList[index]["consistency"] == "gas") {
                        return "lib/icons/gas_white_500.png";
                      } else if (elementList[index]["consistency"] == "fluid") {
                        return "lib/icons/fluid_white_500.png";
                      } else if (elementList[index]["consistency"] == "solid") {
                        return "lib/icons/solid_white_500.png";
                      } else {
                        return "lib/icons/solid_500.png";
                      }
                    }

                    String consistencyText() {
                      if (elementList[index]["consistency"] == "gas") {
                        return AppLocalizations.of(context).translate("gas");
                      } else if (elementList[index]["consistency"] == "fluid") {
                        return AppLocalizations.of(context).translate("fluid");
                      } else if (elementList[index]["consistency"] == "solid") {
                        return AppLocalizations.of(context).translate("solid");
                      } else {
                        return AppLocalizations.of(context)
                            .translate("unknown");
                      }
                    }

                    String discoveryText() {
                      if (elementList[index]["discovery"] == "ancient") {
                        return ' ${AppLocalizations.of(context).translate("ancient")[0].toUpperCase()}${AppLocalizations.of(context).translate("ancient").substring(1)}';
                      } else {
                        return ' ' + elementList[index]["discovery"];
                      }
                    }

                    String typeText() {
                      return AppLocalizations.of(context)
                          .translate(elementList[index]["type"]);
                    }

                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              image: DecorationImage(
                                image: AssetImage(
                                    "lib/backgrounds/transparent.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                          2 *
                                          .05 +
                                      30,
                                  top: 30,
                                  bottom: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Tooltip(
                                      message: AppLocalizations.of(context)
                                          .translate("elementName"),
                                      child: Text(
                                        elementList[index][
                                            AppLocalizations.of(context)
                                                .translate("key")],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          height: 1.2,
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .08,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tooltip(
                                    message: AppLocalizations.of(context)
                                        .translate("consistency"),
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                            image:
                                                AssetImage(consistencyIcon()),
                                            height: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06,
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06),
                                        Text(
                                          ' ${consistencyText()[0].toUpperCase()}${consistencyText().substring(1)}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Tooltip(
                                    message: AppLocalizations.of(context)
                                        .translate("discovery"),
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                            image: AssetImage(
                                                "lib/icons/discovery_white_500.png"),
                                            height: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06,
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06),
                                        Text(
                                          discoveryText(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: (MediaQuery.of(context)
                                                        .size
                                                        .height +
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) /
                                                2 *
                                                .06,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Tooltip(
                                    message: AppLocalizations.of(context)
                                        .translate("type"),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        typeText(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .06,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .05,
                        right: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .05,
                        bottom: 40),
                    decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "lib/backgrounds/" + elementList[index]["bg"]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: new BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .03)),
                    height: (MediaQuery.of(context).size.height +
                            MediaQuery.of(context).size.width) /
                        2 *
                        .2,
                    width: (MediaQuery.of(context).size.width +
                            MediaQuery.of(context).size.height) /
                        2 *
                        .2,
                    child: new Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Padding(
                            padding: EdgeInsets.only(top: 20, left: 30),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  elementList[index]["element"].toString(),
                                  textAlign: TextAlign.left,
                                  style: new TextStyle(
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 8.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: (MediaQuery.of(context)
                                                .size
                                                .height +
                                            MediaQuery.of(context).size.width) /
                                        2 *
                                        .08,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
        future: DefaultAssetBundle.of(context).loadString('lib/elements.json'),
      ),
    );
  }
}
