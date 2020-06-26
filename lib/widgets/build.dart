import 'package:flutter/material.dart';
import 'package:flutter_chem/widgets/localization.dart';
import 'package:splashscreen/splashscreen.dart';

import 'drawer.dart';
import 'landing.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      title: Text(
        'Elements',
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
    return Scaffold(backgroundColor: Colors.white, drawer: customDrawer(),  body: landing());
  }

}