
import 'package:fachbereichs_app/screens/startScreen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fachbereich AI',
      theme: ThemeData(

        primarySwatch: Colors.lightGreen,
      ),
      home: StartScreen(),
    );
  }
}