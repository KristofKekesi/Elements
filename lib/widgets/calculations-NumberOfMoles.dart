import 'dart:convert';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:elements_rework/widgets/localization.dart';

var calculateModesNumberOfMoles = AutoSizeGroup();
var calculationModesNumberOfMoles = AutoSizeGroup();
var popupModesNumberOfMoles = AutoSizeGroup();

String percentageModifier(double value) {
  final roundedValue = value.toStringAsFixed(2).toString();
  return roundedValue;
}

String percentageModifierNull(double value) {
  final roundedValue = value.toStringAsFixed(0).toString();
  return roundedValue;
}

// ignore: camel_case_types
class calculateNumberOfMoles extends StatefulWidget {
  @override
  _calculateNumberOfMoles createState() => _calculateNumberOfMoles();
}

// ignore: camel_case_types
class _calculateNumberOfMoles extends State<calculateNumberOfMoles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .1,
                        right: MediaQuery.of(context).size.width * .25,
                        top: MediaQuery.of(context).size.height * .02,
                        bottom: MediaQuery.of(context).size.height * .02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Tooltip(
                            message:
                                AppLocalizations.of(context).translate("back"),
                            child: Image(
                                image: AssetImage("lib/icons/left_500.png"),
                                height:
                                    MediaQuery.of(context).size.width * .105,
                                width:
                                    MediaQuery.of(context).size.width * .105),
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            " Number of moles",
                            textAlign: TextAlign.left,
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * .12,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .01,
                      right: MediaQuery.of(context).size.width * .1,
                      left: MediaQuery.of(context).size.width * .1),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Calculate by',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * .12,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xfff22447),
                                Color(0xffb80733),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(
                              (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .02),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .04,
                              right: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .04,
                              top: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .03,
                              bottom: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              calculationsNumberOfMoles()));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Tooltip(
                                    message: AppLocalizations.of(context)
                                        .translate(
                                            'electronnegativitySelector'),
                                    child: AutoSizeText(
                                      'Molar mass (M) and Mass (m)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .08,
                                        color: Colors.white,
                                      ),
                                      maxLines: 1,
                                      group: calculateModesNumberOfMoles,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          );
        },
      ),
    );
  }
}

String M = '1';
String m = '1';

// ignore: missing_return
String addTom(plus, equal) {
  if (equal == true) {
    return m = plus;
  } else {
    if (plus == '.') {
      if (m.contains('.')) {
        return m;
      } else {
        return m += '.';
      }
    }
    if (plus == 'backspace') {
      if (m == '0') {
        return m;
      } else if (m != null && m.length > 1) {
        return m = m.substring(0, m.length - 1);
      } else {
        return m = '0';
      }
    }
    if (m.length <= 5) {
      if (m == '0') {
        if (plus == '0') {
          return m = '0';
        } else {
          return m = plus;
        }
      } else {
        return m += plus;
      }
    }
  }
}

class CalculationsPopup extends StatefulWidget {
  const CalculationsPopup({
    Key key,
  }) : super(key: key);

  @override
  _CalculationsPopupState createState() => _CalculationsPopupState();
}

class _CalculationsPopupState extends State<CalculationsPopup> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .95,
      maxChildSize: 1,
      builder: (BuildContext context, scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular((MediaQuery.of(context).size.height +
                MediaQuery.of(context).size.width) /
                2 *
                .1),
            topRight: Radius.circular((MediaQuery.of(context).size.height +
                MediaQuery.of(context).size.width) /
                2 *
                .1),
          ),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, .3)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                      2 *
                      .05,
                  sigmaY: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                      2 *
                      .05),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .04,
                              bottom: MediaQuery.of(context).size.height * .05),
                          child: Text(
                            'Mass' + ':',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * .09,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .09,
                          bottom: MediaQuery.of(context).size.height * .01,
                          top: MediaQuery.of(context).size.height * .03,
                          right: MediaQuery.of(context).size.width * .15,
                        ),
                        child: Text(
                          'Custom number',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:
                              MediaQuery.of(context).size.height * .04),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .09,
                          bottom: MediaQuery.of(context).size.height * .01,
                          right: MediaQuery.of(context).size.width * .15,
                        ),
                        child: Text(
                          m,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize:
                              MediaQuery.of(context).size.height * .04),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .1,
                            bottom: MediaQuery.of(context).size.width * .1,
                            right: MediaQuery.of(context).size.width * .1),
                        child: Column(children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  m += '1';
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xfff22447),
                                          Color(0xffb80733),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(
                                        (MediaQuery.of(context).size.height +
                                            MediaQuery.of(context)
                                                .size
                                                .width) /
                                            2 *
                                            .02),
                                  ),
                                  width:
                                  MediaQuery.of(context).size.width * .23,
                                  height:
                                  MediaQuery.of(context).size.width * .23,
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width *
                                              .1),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  m += '2';
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xfff22447),
                                          Color(0xffb80733),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(
                                        (MediaQuery.of(context).size.height +
                                            MediaQuery.of(context)
                                                .size
                                                .width) /
                                            2 *
                                            .02),
                                  ),
                                  width:
                                  MediaQuery.of(context).size.width * .23,
                                  height:
                                  MediaQuery.of(context).size.width * .23,
                                  child: Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width *
                                              .1),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  m += '3';
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xfff22447),
                                          Color(0xffb80733),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(
                                        (MediaQuery.of(context).size.height +
                                            MediaQuery.of(context)
                                                .size
                                                .width) /
                                            2 *
                                            .02),
                                  ),
                                  width:
                                  MediaQuery.of(context).size.width * .23,
                                  height:
                                  MediaQuery.of(context).size.width * .23,
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width *
                                              .1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * .05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    m += '4';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    m = '5';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    m += '6';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '6',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * .05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    m += '7';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    m += '8';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '8',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    m += '9';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '9',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width * .05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    m += '.';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    m += '0';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Text(
                                        '0',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                .size
                                                .width *
                                                .1),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    m += 'backspace';
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xfff22447),
                                            Color(0xffb80733),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(
                                          (MediaQuery.of(context).size.height +
                                              MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              2 *
                                              .02),
                                    ),
                                    width:
                                    MediaQuery.of(context).size.width * .23,
                                    height:
                                    MediaQuery.of(context).size.width * .23,
                                    child: Center(
                                      child: Image(
                                        height:
                                        MediaQuery.of(context).size.width *
                                            .13,
                                        image: AssetImage(
                                            'lib/icons/left_white_500.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
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
  }
}


// ignore: camel_case_types
class calculationsNumberOfMoles extends StatefulWidget {
  @override
  _calculationsNumberOfMoles createState() => _calculationsNumberOfMoles();
}

// ignore: camel_case_types
class _calculationsNumberOfMoles extends State<calculationsNumberOfMoles> {
  // ignore: missing_return
  String addToM(plus, equal) {
    if (equal == true) {
      setState(() {
        return M = plus;
      });
    } else {
      setState(() {
        if (plus == '.') {
          if (M.contains('.')) {
            return M;
          } else {
            return M += '.';
          }
        }
        if (plus == 'backspace') {
          if (M == '0') {
            return M;
          } else if (M != null && M.length > 1) {
            return M = M.substring(0, M.length - 1);
          } else {
            return M = '0';
          }
        }
        if (M.length <= 5) {
          if (M == '0') {
            if (plus == '0') {
              return M = '0';
            } else {
              return M = plus;
            }
          } else {
            return M += plus;
          }
        }
      });
    }
  }

  String finalValue(number) {
    print('finalValue input: ' + number.toString());
    if (number == 'Infinity' || number == 'NaN') {
      return '0';
    }
    if (number.toString().contains('.') &&
        number.toString().split('.')[1].replaceAll('0', '') == '') {
      print('finalValue output: ' +
          number.toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), ""));
      return number.toString().replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
    } else {
      print('final output: ' + number.toString());
      return number.toString();
    }
  }

  String finalValueWithRounding(number) {
    if (number == 'Infinity' || number == 'NaN') {
      return '0';
    }
    if (number.contains('.') && number.split('.')[1].length > 5) {
      return '~ ${double.parse(number).toStringAsFixed(5).replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "")}';
    } else {
      return number.replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
    }
  }

  double toDouble(number) {
    print('toDouble input: ' + number);
    print('toDouble output: ' + double.parse(number).toString());
    return double.parse(number);
  }

  final scaffoldKey =
      GlobalKey<ScaffoldState>(); // <---- Another instance variable
  void openCalculationsPopup() {
    scaffoldKey.currentState.showBottomSheet((context) => CalculationsPopup());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Builder(
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .1,
                        right: MediaQuery.of(context).size.width * .25,
                        top: MediaQuery.of(context).size.height * .02,
                        bottom: MediaQuery.of(context).size.height * .02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Tooltip(
                            message:
                                AppLocalizations.of(context).translate("back"),
                            child: Image(
                                image: AssetImage("lib/icons/left_500.png"),
                                height:
                                    MediaQuery.of(context).size.width * .105,
                                width:
                                    MediaQuery.of(context).size.width * .105),
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            " Number of moles",
                            textAlign: TextAlign.left,
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * .12,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .01,
                      right: MediaQuery.of(context).size.width * .1,
                      left: MediaQuery.of(context).size.width * .1),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: AutoSizeText(
                          'Calculation',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * .12,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xfff22447),
                                Color(0xffb80733),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(
                              (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .02),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .04,
                              right: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .04,
                              top: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .03,
                              bottom: (MediaQuery.of(context).size.height +
                                      MediaQuery.of(context).size.width) /
                                  2 *
                                  .03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
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
                                                initialChildSize: .95,
                                                maxChildSize: 1,
                                                builder: (BuildContext context,
                                                    scrollController) {
                                                  return ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                          (MediaQuery.of(context)
                                                                      .size
                                                                      .height +
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width) /
                                                              2 *
                                                              .1),
                                                      topRight: Radius.circular(
                                                          (MediaQuery.of(context)
                                                                      .size
                                                                      .height +
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width) /
                                                              2 *
                                                              .1),
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, .3)),
                                                      child: BackdropFilter(
                                                        filter: ImageFilter.blur(
                                                            sigmaX: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .05,
                                                            sigmaY: (MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height +
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width) /
                                                                2 *
                                                                .05),
                                                        child:
                                                            SingleChildScrollView(
                                                          controller:
                                                              scrollController,
                                                          child: Center(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <
                                                                  Widget>[
                                                                Center(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: MediaQuery.of(context).size.height *
                                                                            .04,
                                                                        bottom: MediaQuery.of(context).size.height *
                                                                            .05),
                                                                    child: Text(
                                                                      'Molar Mass' +
                                                                          ':',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            MediaQuery.of(context).size.width *
                                                                                .09,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .09,
                                                                    bottom: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .01,
                                                                    right: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .15,
                                                                  ),
                                                                  child:
                                                                      AutoSizeText(
                                                                    'Select from an element',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            MediaQuery.of(context).size.height *
                                                                                .04),
                                                                    maxLines: 1,
                                                                    group:
                                                                        popupModesNumberOfMoles,
                                                                  ),
                                                                ),
                                                                FutureBuilder(
                                                                  future: DefaultAssetBundle.of(
                                                                          context)
                                                                      .loadString(
                                                                          'lib/elements.json'),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    if (snapshot
                                                                        .hasData) {
                                                                      var elementList = json.decode(snapshot
                                                                          .data
                                                                          .toString());
                                                                      final listElements =
                                                                          <Widget>[];
                                                                      listElements
                                                                          .add(
                                                                              new Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .05,
                                                                      ));
                                                                      for (var index =
                                                                              0;
                                                                          index <
                                                                              elementList.length;
                                                                          index++) {
                                                                        listElements.add(StatefulBuilder(builder: (BuildContext
                                                                                context,
                                                                            StateSetter
                                                                                setState) {
                                                                          return GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              setState(() {
                                                                                addToM(elementList[index]['weight'].replaceAll('(', '').replaceAll(')', ''), true);
                                                                              });
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              margin: EdgeInsets.only(
                                                                                left: MediaQuery.of(context).size.width * .05,
                                                                                right: MediaQuery.of(context).size.width * .05,
                                                                              ),
                                                                              decoration: new BoxDecoration(
                                                                                color: Color(int.parse(elementList[index]["m1"])),
                                                                                borderRadius: new BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                              ),
                                                                              width: MediaQuery.of(context).size.width * .35,
                                                                              child: Tooltip(
                                                                                message: elementList[index][AppLocalizations.of(context).translate('key')],
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: <Widget>[
                                                                                    new Align(
                                                                                      alignment: Alignment.topLeft,
                                                                                      child: new Padding(
                                                                                        padding: EdgeInsets.only(
                                                                                          top: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02,
                                                                                          left: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .04,
                                                                                        ),
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
                                                                                                fontSize: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .05,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(bottom: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .04, left: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .04, right: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .04),
                                                                                      child: new Align(
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        child: Text(
                                                                                          elementList[index]["element"],
                                                                                          style: TextStyle(
                                                                                            shadows: <Shadow>[
                                                                                              Shadow(
                                                                                                offset: Offset(2.0, 2.0),
                                                                                                blurRadius: 8.0,
                                                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                                                              ),
                                                                                            ],
                                                                                            fontWeight: FontWeight.bold,
                                                                                            color: Colors.white,
                                                                                            fontSize: (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .07,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }));
                                                                      }

                                                                      listElements
                                                                          .add(
                                                                              new Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .05,
                                                                      ));

                                                                      return new Tooltip(
                                                                        message:
                                                                            'Select an element.',
                                                                        child:
                                                                            new SingleChildScrollView(
                                                                          scrollDirection:
                                                                              Axis.horizontal,
                                                                          child:
                                                                              Row(children: listElements),
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      return Container(
                                                                          child:
                                                                              Text('a'));
                                                                    }
                                                                  },
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .09,
                                                                    bottom: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .01,
                                                                    top: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .03,
                                                                    right: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .15,
                                                                  ),
                                                                  child:
                                                                      AutoSizeText(
                                                                    'Custom number',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            MediaQuery.of(context).size.height *
                                                                                .04),
                                                                    maxLines: 1,
                                                                    group:
                                                                        popupModesNumberOfMoles,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .09,
                                                                    bottom: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        .01,
                                                                    right: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        .15,
                                                                  ),
                                                                  child:
                                                                      AutoSizeText(
                                                                    M,
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            MediaQuery.of(context).size.height *
                                                                                .04),
                                                                    maxLines: 1,
                                                                    group:
                                                                        popupModesNumberOfMoles,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .1,
                                                                      bottom: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .1,
                                                                      right: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .1),
                                                                  child: Column(
                                                                      children: <
                                                                          Widget>[
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: <
                                                                              Widget>[
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                addToM('1', false);
                                                                              },
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  gradient: LinearGradient(colors: [
                                                                                    Color(0xfff22447),
                                                                                    Color(0xffb80733),
                                                                                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                  borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                ),
                                                                                width: MediaQuery.of(context).size.width * .23,
                                                                                height: MediaQuery.of(context).size.width * .23,
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    '1',
                                                                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                addToM('2', false);
                                                                              },
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  gradient: LinearGradient(colors: [
                                                                                    Color(0xfff22447),
                                                                                    Color(0xffb80733),
                                                                                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                  borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                ),
                                                                                width: MediaQuery.of(context).size.width * .23,
                                                                                height: MediaQuery.of(context).size.width * .23,
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    '2',
                                                                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                addToM('3', false);
                                                                              },
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  gradient: LinearGradient(colors: [
                                                                                    Color(0xfff22447),
                                                                                    Color(0xffb80733),
                                                                                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                  borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                ),
                                                                                width: MediaQuery.of(context).size.width * .23,
                                                                                height: MediaQuery.of(context).size.width * .23,
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    '3',
                                                                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(top: MediaQuery.of(context).size.width * .05),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: <Widget>[
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('4', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '4',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('5', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '5',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('6', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '6',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(top: MediaQuery.of(context).size.width * .05),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: <Widget>[
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('7', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '7',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('8', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '8',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('9', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '9',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(top: MediaQuery.of(context).size.width * .05),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: <Widget>[
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('.', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '.',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('0', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Text(
                                                                                      '0',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width * .1),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              GestureDetector(
                                                                                onTap: () {
                                                                                  addToM('backspace', false);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(colors: [
                                                                                      Color(0xfff22447),
                                                                                      Color(0xffb80733),
                                                                                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                                                    borderRadius: BorderRadius.circular((MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 2 * .02),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width * .23,
                                                                                  height: MediaQuery.of(context).size.width * .23,
                                                                                  child: Center(
                                                                                    child: Image(
                                                                                      height: MediaQuery.of(context).size.width * .13,
                                                                                      image: AssetImage('lib/icons/left_white_500.png'),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ]),
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
                                            });
                                      },
                                      child: Tooltip(
                                        message: 'Molar mass (M)',
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            AutoSizeText(
                                              'M = ${finalValue(toDouble(M))} g/mol',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .08,
                                                color: Colors.white,
                                              ),
                                              maxLines: 1,
                                              group:
                                                  calculationModesNumberOfMoles,
                                            ),
                                            Image(
                                                image: AssetImage(
                                                  "lib/icons/settings_white_500.png",
                                                ),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .06,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .06),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        openCalculationsPopup();
                                      },
                                      child: Tooltip(
                                        message: 'Mass (m)',
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            AutoSizeText(
                                              'm = ${finalValue(toDouble(m))} g',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .08,
                                                color: Colors.white,
                                              ),
                                              maxLines: 1,
                                              group:
                                                  calculationModesNumberOfMoles,
                                            ),
                                            Image(
                                                image: AssetImage(
                                                  "lib/icons/settings_white_500.png",
                                                ),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .06,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .06),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Tooltip(
                                      message: 'Number of moles (n)',
                                      child: AutoSizeText(
                                        'n = m / M',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .08,
                                          color: Colors.white,
                                        ),
                                        maxLines: 1,
                                        group: calculationModesNumberOfMoles,
                                      ),
                                    ),
                                    AutoSizeText(
                                      '\nn = ${finalValueWithRounding(((toDouble(m) / toDouble(M)).toString()).toString())} mol',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .08,
                                        color: Colors.white,
                                      ),
                                      maxLines: 2,
                                      group: calculationModesNumberOfMoles,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .03,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xfff22447),
                                  Color(0xffb80733),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(
                                (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .02),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04,
                                right: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .04,
                                top: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .03,
                                bottom: (MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2 *
                                    .03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Tooltip(
                                        message: 'Molar mass (M)',
                                        child: AutoSizeText(
                                          'M = Molar mass',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .08,
                                            color: Colors.white,
                                          ),
                                          maxLines: 1,
                                          group: calculationModesNumberOfMoles,
                                        ),
                                      ),
                                      Tooltip(
                                        message: 'Mass (m)',
                                        child: AutoSizeText(
                                          'm = Mass',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .08,
                                            color: Colors.white,
                                          ),
                                          maxLines: 1,
                                          group: calculationModesNumberOfMoles,
                                        ),
                                      ),
                                      Tooltip(
                                        message: 'Number of moles (n)',
                                        child: AutoSizeText(
                                          'n = Number of moles',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .08,
                                            color: Colors.white,
                                          ),
                                          maxLines: 1,
                                          group: calculationModesNumberOfMoles,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          );
        },
      ),
    );
  }
}
