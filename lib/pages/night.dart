import 'package:flutter/material.dart';
import 'package:reformed_note/main.dart';

class Night extends StatefulWidget {
  Night({Key? key}) : super(key: key);

  @override
  _nightState createState() => _nightState();
}

class _nightState extends State<Night> {
  @override
  void initState() {
    super.initState();
    _nightState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: nightModeColor,
        body: Center(
          child: Container(
            height: 150,
            width: 230,
            child: const Center(
              child: Text(
                'Night Mode',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Norwester',
                  color: Color(0xFFf4f2f2),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
