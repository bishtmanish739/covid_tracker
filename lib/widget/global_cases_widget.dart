import 'dart:ffi';

import 'package:covid_tracker/businesslogic/bloc/global_bloc.dart';
import 'package:covid_tracker/businesslogic/bloc/global_state.dart';
import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GLobalCaseRander extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<GlobalBloc, GlobalState>(
        builder: (context, state) {
          GlobalClass g;
          if (state is GlobalLoadedState) {
            g = state.g.global;
          }
          return Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.cyan[50],
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(2),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                          child: Text(g.totalConfirmed.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ),
                    Text(
                      "Total Confirm ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                          child: Text(g.newConfirmed.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ),
                    Text(
                      "New Case ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                          child: Text(g.totalRecovered.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ),
                    Text(
                      "Total Recovered ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
