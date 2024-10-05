import 'package:flutter/material.dart';

class Flutteralign extends StatelessWidget {
  const Flutteralign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 400,
        color: Colors.grey,
        child: Align(
          alignment: Alignment.topRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("data1"),
              Text("data2"),
              Text("data3"),
              Text("data4"),
            ],
          ),
        ),
      ),
    );
  }
}
