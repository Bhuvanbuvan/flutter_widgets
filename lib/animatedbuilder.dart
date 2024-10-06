import 'package:flutter/material.dart';
import 'dart:math' as math;

class Animatedbuilder extends StatefulWidget {
  const Animatedbuilder({super.key});

  @override
  State<Animatedbuilder> createState() => _AnimatedbuilderState();
}

class _AnimatedbuilderState extends State<Animatedbuilder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 10),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: Container(
          height: 50,
          width: 50,
          child: Column(
            children: [
              Text(
                "data",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
