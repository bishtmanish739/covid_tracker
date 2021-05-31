import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:covid_tracker/widget/all_country_list.dart';
import 'package:covid_tracker/widget/global_cases_widget.dart';
import 'package:covid_tracker/widget/saved_country.dart';
import 'package:flutter/material.dart';

class HomePageRander extends StatefulWidget {
  Global g;

  HomePageRander(this.g);

  @override
  _HomePageRanderState createState() => _HomePageRanderState();
}

class _HomePageRanderState extends State<HomePageRander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GLobalCaseRander(),
          SavedCountry(),
          Expanded(child: RanderCounry()),
          // this is dev now
          //now this is new pref//
        ],
      ),
    );
  }
}
