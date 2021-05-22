import 'dart:ffi';

import 'package:covid_tracker/models/covid_country.dart';
import 'package:covid_tracker/widget/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url = "https://api.covid19api.com/summary";
  final _allCase = CovidCounty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Covid Tracker ')),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }
}
