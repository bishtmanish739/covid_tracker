import 'dart:async';
import 'package:covid_tracker/Screen/covid_symptom.dart';
import 'package:covid_tracker/Screen/home_screen.dart';
import 'package:covid_tracker/Screen/splash_screen.dart';
import 'package:covid_tracker/Screen/vaccination.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
      routes: {
        '/Symptom': (context) => CovidSymptom(),
        '/Vaccination': (context) => Vaccination(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}