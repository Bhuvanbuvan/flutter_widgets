import 'package:flutter/material.dart';

class Widget002 extends StatelessWidget {
  const Widget002({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AboutListTile(
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Flutter Wedgets',
        applicationVersion: 'V1.0',
        aboutBoxChildren: [Text("this is about tile widgets")],
      ),
    );
  }
}
