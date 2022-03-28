import 'package:flutter/material.dart';
import 'package:reformed_note/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Top AppBar widget
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Reformed Note',
            style: TextStyle(fontFamily: 'Roboto'),
          )),
          backgroundColor: primaryColor,
          actions: [
            // Three dotted popup menu located to the left
            PopupMenuButton<String>(
              // Determines which method to use depending upon the value selected from the popup menu
              icon: const Icon(Icons.more_vert),
              color: trietaryColor,
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: '/settings',
                  child: Text(
                    "Setting",
                    style: TextStyle(color: secondaryColor),
                  ),
                ),
                PopupMenuItem(
                  value: '/night',
                  child: Text("Dark Mode",
                      style: TextStyle(color: secondaryColor)),
                ),
                PopupMenuItem(
                  value: '/search',
                  child:
                      Text("Search", style: TextStyle(color: secondaryColor)),
                ),
                PopupMenuItem(
                  value: '/sort',
                  child: Text("Sort", style: TextStyle(color: secondaryColor)),
                ),
              ],
              onSelected: ((value) {
                Navigator.pushReplacementNamed(context, value);
              }),
            ),
          ],
        ),
        body: Container(),
        backgroundColor: secondaryColor,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: primaryColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
