import 'package:flutter/material.dart';
import 'package:flutter_widgets/absorbpointer.dart';
import 'package:flutter_widgets/aleardialog.dart';
import 'package:flutter_widgets/flutteralign.dart';
import 'package:flutter_widgets/widget001.dart';
import 'package:flutter_widgets/widget002.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Flutter Widgets",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Flutteralign(),
    );
  }
}
