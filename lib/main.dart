import 'package:flutter/material.dart';

import 'Controleurs/homepage/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme:  ThemeData(
          fontFamily: 'Komikax',
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30.0,color: Color(0xFFFA9917)),
          headline2: TextStyle(fontSize: 20.0,color: Colors.black),
      )
      ),
      home: HomePage(),
    );
  }
}
