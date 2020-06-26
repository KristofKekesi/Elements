import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'preferenciesWindow.dart';
import 'localization.dart';

// ignore: non_constant_identifier_names
String Capitalizate(input) {
  return input[0].toUpperCase() + input.substring(1);
}

// ignore: camel_case_types
class customDrawer extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error launching $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .3,
              child: DrawerHeader(
                child: null,
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/backgrounds/cover.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => preferenciesWindow(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .03),
           child: GestureDetector(
              onTap: () {
                _launchURL('https://github.com/KristofKekesi/Elements/blob/master/README.md#contributors-');
              },
              child: ListTile(
                title: Text(
                  AppLocalizations.of(context).translate('contributors'),
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .07),
                ),
              ),
           ),
              ),
            ),
            GestureDetector(
              onTap: (){_launchURL('https://github.com/KristofKekesi/Elements/blob/master/README.md#contacts-');},
              child: ListTile(
                title: Text(
                  AppLocalizations.of(context).translate('contacts'),
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .07),
                ),
              ),
            ),
            Divider(
              thickness: MediaQuery.of(context).size.height * .005,
            ),
            GestureDetector(
              onTap: (){_launchURL('https://github.com/KristofKekesi/Elements/blob/master/README.md#license-');},
              child: ListTile(
                title: Text(
                  AppLocalizations.of(context).translate('license'),
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .07),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  autoAboutDialog(context);
                },
                child: ListTile(
                    title: Text(
                        AppLocalizations.of(context).translate('credits'),
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .07)))),
            Divider(
              thickness: MediaQuery.of(context).size.height * .005,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .02),
              child: ListTile(
                title: Text(
                  Capitalizate(AppLocalizations.of(context).translate('name')) +
                      ' [' +
                      AppLocalizations.of(context).translate('key') +
                      ']',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: (MediaQuery.of(context).size.height +
                              MediaQuery.of(context).size.width) /
                          2 *
                          .05),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void autoAboutDialog(context) {
  showAboutDialog(
      context: context,
      applicationVersion: '0.0.1',
      applicationName: 'Elements',
      applicationLegalese: 'Kristof Kekesi');
}
