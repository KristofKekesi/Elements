import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chem/widgets/localization.dart';

// ignore: camel_case_types
class cardView extends StatelessWidget {
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
              scrollDirection: Axis.horizontal,
              cacheExtent: 100.0,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    String consistency() {
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
                                  Tooltip(
                                    message: AppLocalizations.of(context).translate("elementName"),
                              child:
                                  Text(
                                    elementList[index][
                                        AppLocalizations.of(context)
                                            .translate("key")],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 1.2,
                                      fontSize:
                                          (MediaQuery.of(context).size.height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .08,
                                    ),
                                  ),
                                  ),
                                  Row(children: <Widget>[
                                    Image(
                                        image: AssetImage(consistency()),
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
                                      ' ${elementList[index]["consistency"][0].toUpperCase()}${elementList[index]["consistency"].substring(1)}',
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
                                  ]),
                                  Row(children: <Widget>[
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
                                      ' ' + elementList[index]["discovery"],
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
                                  ]),
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
                        .8,
                    width: (MediaQuery.of(context).size.width +
                            MediaQuery.of(context).size.height) /
                        2 *
                        .55,
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
                                  elementList[index]["number"].toString(),
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
                        Expanded(
                          flex: 10,
                          child: new Padding(
                            padding: EdgeInsets.only(bottom: 20, left: 30),
                            child: new Align(
                              alignment: Alignment.bottomLeft,
                              child: RichText(
                                text: TextSpan(
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
                                        .06,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: elementList[index]["element"],
                                        style: TextStyle(
                                          shadows: <Shadow>[
                                            Shadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 8.0,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ],
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .height +
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width) /
                                              2 *
                                              .1,
                                        )),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                      text: elementList[index][
                                          AppLocalizations.of(context)
                                              .translate("key")],
                                    ),
                                  ],
                                ),
                              ),
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
