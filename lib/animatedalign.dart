import 'package:flutter/material.dart';

class Animatedalign extends StatefulWidget {
  const Animatedalign({super.key});

  @override
  State<Animatedalign> createState() => _AnimatedalignState();
}

class _AnimatedalignState extends State<Animatedalign> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          selected = !selected;
        })
      },
      child: Center(
        child: Container(
          height: 200,
          width: 400,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedAlign(
              alignment: selected
                  ? AlignmentDirectional.bottomEnd
                  : AlignmentDirectional.topStart,
              duration: Durations.medium1,
              curve: Curves.easeInOut,
              child: AnimatedWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedWidget extends StatelessWidget {
  const AnimatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.lightBlue,
      child: Column(
        children: [Text("swipe down"), Text("swipe Top")],
      ),
    );
  }
}
