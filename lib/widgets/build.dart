import 'package:flutter/material.dart';
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
            color: Colors.white,
            fontSize: (MediaQuery.of(context).size.height +
                    MediaQuery.of(context).size.width) /
                2 *
                .07,
            fontWeight: FontWeight.bold),
      ),
      imageBackground:
        AssetImage('lib/backgrounds/008_pc.jpg'),
      image: Image(
        image: AssetImage('lib/icons/logo_500.png'),
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