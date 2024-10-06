import 'dart:ffi';

import 'package:flutter/material.dart';

class Animatedcrossfade extends StatefulWidget {
  const Animatedcrossfade({super.key});

  @override
  State<Animatedcrossfade> createState() => _AnimatedcrossfadeState();
}

class _AnimatedcrossfadeState extends State<Animatedcrossfade> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: Text(
            "Switch",
            style: TextStyle(color: Colors.white),
          ),
        ),
        AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/icons/img1.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/icons/img2.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1))
      ],
    );
  }
}
