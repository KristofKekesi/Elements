import 'package:flutter/material.dart';
import 'package:elements_rework/widgets/localization.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:elements_rework/widgets/drawer.dart';
import 'package:elements_rework/widgets/landing.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      title: Text(
        AppLocalizations.of(context).translate('title'),
        style: TextStyle(
          fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      loadingText: Text(
        AppLocalizations.of(context).translate('loadString'),
        style: TextStyle(
          fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      imageBackground:
        AssetImage('lib/backgrounds/008_pc.jpg'),
      image: Image(
        image: AssetImage('lib/icons/logo_white_500.png'),
      ),
      photoSize: 50,
      loaderColor: Colors.white,
      navigateAfterSeconds: Build(),
    );
  }
}

class Build extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: landing(), drawer: customDrawer());
  }

}