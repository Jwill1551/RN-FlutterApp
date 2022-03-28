import 'package:flutter/material.dart';
import 'package:reformed_note/pages/home.dart';
import 'package:reformed_note/pages/night.dart';
import 'package:reformed_note/pages/search.dart';
import 'package:reformed_note/pages/settings.dart';
import 'package:reformed_note/pages/sort.dart';
import 'package:reformed_note/pages/splash.dart';
import 'package:flutter/services.dart';

// Scheme of Colors
Color primaryColor = const Color(0xFF862F2F);
Color secondaryColor = const Color(0xFFf4f2f2);
Color trietaryColor = const Color(0xFF702121);
Color nightModeColor = const Color(0xFF292929);

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: primaryColor,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/home': (context) => const Home(),
        '/search': (context) => Search(),
        '/settings': (context) => Settings(),
        '/sort': (context) => Sort(),
        '/night': (context) => Night(),
      },
    );
  }
}
