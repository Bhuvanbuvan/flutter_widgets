import 'package:flutter/material.dart';

class Anmateddefaulttextstyls extends StatefulWidget {
  const Anmateddefaulttextstyls({super.key});

  @override
  State<Anmateddefaulttextstyls> createState() =>
      _AnmateddefaulttextstylsState();
}

class _AnmateddefaulttextstylsState extends State<Anmateddefaulttextstyls> {
  bool _first = true;
  double fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            child: Text("Flutter "),
            style: TextStyle(
                fontSize: fontSize, color: _color, fontWeight: FontWeight.bold),
            duration: const Duration(milliseconds: 300),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: Text("Switch"),
        )
      ],
    );
  }
}
