import 'dart:convert';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'elementPopup.dart';

// ignore: camel_case_types
class cardView extends StatelessWidget {
  @required
  final List passedElements;

  const cardView({
    Key key,
    this.passedElements,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int pass = 0;

    return new FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('lib/elements.json'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var elementList = json.decode(snapshot.data.toString());
          final listElements = <Widget>[];
          listElements.add(new Container(
            width: MediaQuery.of(context).size.width * .05,
          ));
          for (var index = 0; index < elementList.length; index++) {
            if (passedElements.contains(index) == true) {
              pass++;

              listElements.add(
                new GestureDetector(
                  onVerticalDragUpdate: (dragInfo) {
                    if (dragInfo.delta.dy <= 0) {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return ElementPopup(
                              context: context,
                              name: elementList[index][AppLocalizations.of(context).translate("key")],
                              symbol: elementList[index]["element"],
                              number: elementList[index]["number"],
                              consistency: elementList[index]["consistency"],
                              discovery: elementList[index]["discovery"],
                              electronnegativity: elementList[index]["electronnegativity"],
                              block: elementList[index]["block"],
                              weight: elementList[index]["weight"],
                              radioactivity: elementList[index]["radioactivity"],
                              gamma: elementList[index]["gamma"],
                              beta: elementList[index]["beta"],
                              alpha: elementList[index]["alpha"],
                              multipleRadiationEmitters: elementList[index]["multipleRadiationEmitters"],
                              type: elementList[index]["type"],
                              isotopeNum: elementList[index]["isotopeNum"],
                              isotopesSrc: elementList[index]["isotopesSrc"],
                              chargedComponents: elementList[index]["chargedComponent"],
                              neutron: elementList[index]["neutron"],
                            );
                          }
                      );
                    }
                  },
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return ElementPopup(
                            context: context,
                            name: elementList[index][AppLocalizations.of(context).translate("key")],
                            symbol: elementList[index]["element"],
                            number: elementList[index]["number"],
                            consistency: elementList[index]["consistency"],
                            discovery: elementList[index]["discovery"],
                            electronnegativity: elementList[index]["electronnegativity"],
                            block: elementList[index]["block"],
                            weight: elementList[index]["weight"],
                            radioactivity: elementList[index]["radioactivity"],
                            gamma: elementList[index]["gamma"],
                            beta: elementList[index]["beta"],
                            alpha: elementList[index]["alpha"],
                            multipleRadiationEmitters: elementList[index]["multipleRadiationEmitters"],
                            type: elementList[index]["type"],
                            isotopeNum: elementList[index]["isotopeNum"],
                            isotopesSrc: elementList[index]["isotopesSrc"],
                            chargedComponents: elementList[index]["chargedComponent"],
                            neutron: elementList[index]["neutron"],
                          );
                        }
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .05,
                      right: MediaQuery.of(context).size.width * .05,
                    ),
                    decoration: new BoxDecoration(
                        color: Color(int.parse(elementList[index]["m1"])),
                        image: DecorationImage(
                          image: AssetImage(
                              "lib/backgrounds/" + elementList[index]["bg"]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: new BorderRadius.circular(
                            (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02 +
                                10)),
                    height: MediaQuery.of(context).size.height * .9,
                    width: MediaQuery.of(context).size.width * .8,
                    child: new Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Padding(
                            padding: EdgeInsets.only(
                                top: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02,
                                left: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04),
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
                                        .1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: new Padding(
                            padding: EdgeInsets.only(
                                bottom: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04,
                                left: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04),
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
                ),
              );
            }
          }

          listElements.add(new Container(
            width: MediaQuery.of(context).size.width * .05,
          ));

          if (pass == 0) {
            return Container(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).translate('noResTitle'),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * .1),
                  ),
                  Text(
                    AppLocalizations.of(context).translate('noResContent'),
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black45,
                        fontSize: MediaQuery.of(context).size.width * .06),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * .035,
              ),
              child: Tooltip(
                message:
                    AppLocalizations.of(context).translate("moreAboutElement"),
                child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        },child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: listElements,
                ),
              ),
              ),
            );
          }
        } else {
          return SleekCircularSlider(
            appearance: CircularSliderAppearance(
              spinnerMode: true,
              size: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  2 *
                  .4,
              customColors: CustomSliderColors(
                trackColor: Color(0x00000000),
                hideShadow: true,
                progressBarColors: <Color>[
                  Color(0xff62a39c),
                  Color(0xff13547a),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
