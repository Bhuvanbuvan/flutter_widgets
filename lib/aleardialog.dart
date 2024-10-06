import 'package:flutter/material.dart';

class Aleardialog extends StatefulWidget {
  const Aleardialog({super.key});

  @override
  State<Aleardialog> createState() => _AleardialogState();
}

class _AleardialogState extends State<Aleardialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close"),
                ),
              ],
              title: const Text("This is AlertDialog"),
              contentPadding: const EdgeInsets.all(30),
              content: const Text("wellcome to my Flutter widget Project..."),
            ),
          );
        },
        child: const Text("Alert Dialog Button!.."),
      ),
    );
  }
}
