import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:elements_rework/widgets/build.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('hu', ''),
        const Locale('en', ''),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (locale.languageCode == supportedLocale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      title: 'Elements',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      home: MyHomePage(title: 'Elements'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}
//
//import 'package:flutter/material.dart';
//import 'dart:ui';
//
//void main() => runApp(MyApp());
//
///// This is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'Flutter Code Sample';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: Scaffold(
//        body: MyStateFullWidget(),
//      ),
//    );
//  }
//}
//
///// The text is defined here.
//int text = 1;
//
//
//class MyStateFullWidget extends StatefulWidget {
//  _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
//}
//
//class _MyStateFullWidgetState extends State<MyStateFullWidget> {
//  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//
//  //This will manage opening and closing of the bottom sheet.
//  void openBottomSheet() {
//    print("Opening bottom Sheet");
//    scaffoldKey.currentState.showBottomSheet((context) => BottomSheetWidget());
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      key: scaffoldKey,
//      body: Center(
//        child: ElevatedButton(
//          child: const Text('showModalBottomSheet'),
//          onPressed: () {
//            openBottomSheet();
//          },
//        ),
//      ),
//    );
//  }
//}


//// All the widgets that should go into the bottom sheet should go here.
//class BottomSheetWidget extends StatefulWidget {
//  const BottomSheetWidget({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
//}
//
//class _BottomSheetWidgetState extends State<BottomSheetWidget> {
//  @override
//  Widget build(BuildContext context) {
//    return DraggableScrollableSheet(
//      initialChildSize: .95,
//      maxChildSize: 1,
//      builder: (BuildContext context, scrollController) {
//        return ClipRRect(
//          borderRadius: BorderRadius.only(
//            topLeft: Radius.circular((MediaQuery.of(context).size.height +
//                MediaQuery.of(context).size.width) /
//                2 *
//                .1),
//            topRight: Radius.circular((MediaQuery.of(context).size.height +
//                MediaQuery.of(context).size.width) /
//                2 *
//                .1),
//          ),
//          child: Container(
//            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, .3)),
//            child: BackdropFilter(
//              filter: ImageFilter.blur(
//                  sigmaX: (MediaQuery.of(context).size.height +
//                      MediaQuery.of(context).size.width) /
//                      2 *
//                      .05,
//                  sigmaY: (MediaQuery.of(context).size.height +
//                      MediaQuery.of(context).size.width) /
//                      2 *
//                      .05),
//              child: SingleChildScrollView(
//                controller: scrollController,
//                child: Center(
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Center(
//                        child: Padding(
//                          padding: EdgeInsets.only(
//                              top: MediaQuery.of(context).size.height * .04,
//                              bottom: MediaQuery.of(context).size.height * .05),
//                          child: Text(
//                            'Mass' + ':',
//                            style: TextStyle(
//                              color: Colors.white,
//                              fontWeight: FontWeight.bold,
//                              fontSize: MediaQuery.of(context).size.width * .09,
//                            ),
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                          left: MediaQuery.of(context).size.width * .09,
//                          bottom: MediaQuery.of(context).size.height * .01,
//                          top: MediaQuery.of(context).size.height * .03,
//                          right: MediaQuery.of(context).size.width * .15,
//                        ),
//                        child: Text(
//                          'Custom number',
//                          style: TextStyle(
//                              fontWeight: FontWeight.bold,
//                              color: Colors.white,
//                              fontSize:
//                              MediaQuery.of(context).size.height * .04),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                          left: MediaQuery.of(context).size.width * .09,
//                          bottom: MediaQuery.of(context).size.height * .01,
//                          right: MediaQuery.of(context).size.width * .15,
//                        ),
//                        child: Text(
//                          text.toString(),
//                          style: TextStyle(
//                              fontWeight: FontWeight.bold,
//                              color: Colors.white,
//                              fontSize:
//                              MediaQuery.of(context).size.height * .04),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            left: MediaQuery.of(context).size.width * .1,
//                            bottom: MediaQuery.of(context).size.width * .1,
//                            right: MediaQuery.of(context).size.width * .1),
//                        child: Column(children: <Widget>[
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              GestureDetector(
//                                onTap: () {
//                                  text += 1;
//                                  setState(() {});
//                                },
//                                child: Container(
//                                  decoration: BoxDecoration(
//                                    gradient: LinearGradient(
//                                        colors: [
//                                          Color(0xfff22447),
//                                          Color(0xffb80733),
//                                        ],
//                                        begin: Alignment.topLeft,
//                                        end: Alignment.bottomRight),
//                                    borderRadius: BorderRadius.circular(
//                                        (MediaQuery.of(context).size.height +
//                                            MediaQuery.of(context)
//                                                .size
//                                                .width) /
//                                            2 *
//                                            .02),
//                                  ),
//                                  width:
//                                  MediaQuery.of(context).size.width * .23,
//                                  height:
//                                  MediaQuery.of(context).size.width * .23,
//                                  child: Center(
//                                    child: Text(
//                                      '1',
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          color: Colors.white,
//                                          fontSize: MediaQuery.of(context)
//                                              .size
//                                              .width *
//                                              .1),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                              GestureDetector(
//                                onTap: () {
//                                  text += 2;
//                                  setState(() {});
//                                },
//                                child: Container(
//                                  decoration: BoxDecoration(
//                                    gradient: LinearGradient(
//                                        colors: [
//                                          Color(0xfff22447),
//                                          Color(0xffb80733),
//                                        ],
//                                        begin: Alignment.topLeft,
//                                        end: Alignment.bottomRight),
//                                    borderRadius: BorderRadius.circular(
//                                        (MediaQuery.of(context).size.height +
//                                            MediaQuery.of(context)
//                                                .size
//                                                .width) /
//                                            2 *
//                                            .02),
//                                  ),
//                                  width:
//                                  MediaQuery.of(context).size.width * .23,
//                                  height:
//                                  MediaQuery.of(context).size.width * .23,
//                                  child: Center(
//                                    child: Text(
//                                      '2',
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          color: Colors.white,
//                                          fontSize: MediaQuery.of(context)
//                                              .size
//                                              .width *
//                                              .1),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                              GestureDetector(
//                                onTap: () {
//                                  text += 3;
//                                  setState(() {});
//                                },
//                                child: Container(
//                                  decoration: BoxDecoration(
//                                    gradient: LinearGradient(
//                                        colors: [
//                                          Color(0xfff22447),
//                                          Color(0xffb80733),
//                                        ],
//                                        begin: Alignment.topLeft,
//                                        end: Alignment.bottomRight),
//                                    borderRadius: BorderRadius.circular(
//                                        (MediaQuery.of(context).size.height +
//                                            MediaQuery.of(context)
//                                                .size
//                                                .width) /
//                                            2 *
//                                            .02),
//                                  ),
//                                  width:
//                                  MediaQuery.of(context).size.width * .23,
//                                  height:
//                                  MediaQuery.of(context).size.width * .23,
//                                  child: Center(
//                                    child: Text(
//                                      '3',
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          color: Colors.white,
//                                          fontSize: MediaQuery.of(context)
//                                              .size
//                                              .width *
//                                              .1),
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            ],
//                          ),
//                          Padding(
//                            padding: EdgeInsets.only(
//                                top: MediaQuery.of(context).size.width * .05),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                GestureDetector(
//                                  onTap: () {
//                                    text += 4;
//                                    setState(() {});
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '4',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                GestureDetector(
//                                  onTap: () {
//                                    text += 5;
//                                    setState(() {});
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '5',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                GestureDetector(
//                                  onTap: () {
//                                    text += 6;
//                                    setState(() {});
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '6',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Padding(
//                            padding: EdgeInsets.only(
//                                top: MediaQuery.of(context).size.width * .05),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                GestureDetector(
//                                  onTap: () {
//                                    text += 7;
//                                    setState(() {});
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '7',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                GestureDetector(
//                                  onTap: () {
//                                    text += 8;
//                                    setState(() {});
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '8',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                GestureDetector(
//                                  onTap: () {
//                                    text += 9;
//                                    setState(() {});
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '9',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Padding(
//                            padding: EdgeInsets.only(
//                                top: MediaQuery.of(context).size.width * .05),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                GestureDetector(
//                                  onTap: () {
//
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '.',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                GestureDetector(
//                                  onTap: () {
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Text(
//                                        '0',
//                                        style: TextStyle(
//                                            fontWeight: FontWeight.bold,
//                                            color: Colors.white,
//                                            fontSize: MediaQuery.of(context)
//                                                .size
//                                                .width *
//                                                .1),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                GestureDetector(
//                                  onTap: () {
//                                  },
//                                  child: Container(
//                                    decoration: BoxDecoration(
//                                      gradient: LinearGradient(
//                                          colors: [
//                                            Color(0xfff22447),
//                                            Color(0xffb80733),
//                                          ],
//                                          begin: Alignment.topLeft,
//                                          end: Alignment.bottomRight),
//                                      borderRadius: BorderRadius.circular(
//                                          (MediaQuery.of(context).size.height +
//                                              MediaQuery.of(context)
//                                                  .size
//                                                  .width) /
//                                              2 *
//                                              .02),
//                                    ),
//                                    width:
//                                    MediaQuery.of(context).size.width * .23,
//                                    height:
//                                    MediaQuery.of(context).size.width * .23,
//                                    child: Center(
//                                      child: Image(
//                                        height: MediaQuery.of(context).size.width * .13,
//                                        image: AssetImage('lib/icons/left_white_500.png'),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ]),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          ),
//        );
//      },
//    );
//  }
//}