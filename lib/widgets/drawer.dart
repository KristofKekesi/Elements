import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'preferenciesWindow.dart';
import 'localization.dart';

// ignore: camel_case_types
class customDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/backgrounds/cover.jpg'),
                      fit: BoxFit.fill)),
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
              child: ListTile(
                  title: Text(AppLocalizations.of(context).translate('preferencies'),
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: (MediaQuery.of(context).size.height +
                                  MediaQuery.of(context).size.width) /
                              2 *
                              .05))),
            ),
            Divider(),
            ListTile(
                title: Text(AppLocalizations.of(context).translate('contributors'),
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .05))),
            ListTile(
                title: Text(AppLocalizations.of(context).translate('contacts'),
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .05))),
            Divider(),
            ListTile(
                title: Text(AppLocalizations.of(context).translate('license'),
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: (MediaQuery.of(context).size.height +
                                MediaQuery.of(context).size.width) /
                            2 *
                            .05))),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  autoAboutDialog(context);
                },
                child: ListTile(
                    title: Text(AppLocalizations.of(context).translate('credits'),
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: (MediaQuery.of(context).size.height +
                                    MediaQuery.of(context).size.width) /
                                2 *
                                .05)))),
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
