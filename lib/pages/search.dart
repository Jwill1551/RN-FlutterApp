import 'package:flutter/material.dart';
import 'package:reformed_note/main.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _searchState();
}

class _searchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            // This search bar will be used to search for notes

            backgroundColor: primaryColor,
            leading: IconButton(
              onPressed: () => Navigator.popAndPushNamed(context, '/home'),
              icon: Icon(
                Icons.arrow_circle_left,
                color: secondaryColor,
                size: 35,
              ),
            ),
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: primaryColor,
                      ),
                      onPressed: () {},
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            )),
        body: Container(),
        backgroundColor: secondaryColor,
      ),
    );
  }
}
