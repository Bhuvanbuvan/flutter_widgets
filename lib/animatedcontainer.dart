import 'package:flutter/material.dart';

class Animatedcontainer extends StatefulWidget {
  const Animatedcontainer({super.key});

  @override
  State<Animatedcontainer> createState() => _AnimatedcontainerState();
}

class _AnimatedcontainerState extends State<Animatedcontainer> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: AnimatedContainer(
          height: selected ? 100 : 400,
          width: selected ? 400 : 100,
          color: selected ? Colors.blue : Colors.green,
          alignment: selected ? Alignment.center : Alignment.topCenter,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(
            size: 50,
          ),
        ),
      ),
    );
  }
}
