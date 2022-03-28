// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:reformed_note/main.dart';
import 'package:reformed_note/pages/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _splashToHome();
  }

  _splashToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 230,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: secondaryColor, width: 4),
              bottom: BorderSide(color: secondaryColor, width: 4),
            ),
          ),
          child: const Center(
            child: Text(
              'Refromed Note',
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
      backgroundColor: trietaryColor,
    );
  }
}
