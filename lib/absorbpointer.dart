import 'dart:math';

import 'package:flutter/material.dart';

class Absorbpointer extends StatefulWidget {
  const Absorbpointer({super.key});

  @override
  State<Absorbpointer> createState() => _AbsorbpointerState();
}

class _AbsorbpointerState extends State<Absorbpointer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: AbsorbPointer(
              child: ElevatedButton(
                onPressed: () {},
                child: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 30, 190, 166),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
