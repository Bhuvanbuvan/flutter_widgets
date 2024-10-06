import 'package:flutter/material.dart';

class Widget001 extends StatefulWidget {
  const Widget001({super.key});

  @override
  State<Widget001> createState() => _Widget001State();
}

class _Widget001State extends State<Widget001> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            setState(() {
              showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                        applicationIcon: FlutterLogo(),
                        applicationLegalese: 'Legalese',
                        applicationName: 'Flutter Widgets',
                        applicationVersion: 'V1.0',
                        children: [Text("this is About Dialog!..")],
                      ));
            });
          },
          child: const Text("Show About Dialog!")),
    );
  }
}
