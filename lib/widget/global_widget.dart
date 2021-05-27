import 'package:covid_tracker/businesslogic/bloc/global_bloc.dart';
import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCase extends StatefulWidget {
  @override
  _GlobalCaseState createState() => _GlobalCaseState();
}

class _GlobalCaseState extends State<GlobalCase> {
  _GlobalCaseState();
  @override
  void initState() {
    // TODO: implement initState
    context.read<GlobalBloc>().add(FetchGlobalCaseEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //.add(FetchGlobalCaseEvent());
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.white),
      child:
          BlocBuilder<GlobalBloc, GlobalCaseState>(builder: (context, state) {
        return state is GlobalCaseLoaded
            ? Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.cyan),
                        child: Center(
                            child: Text(
                          state.allCase.TotalConfirmed.toString(),
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Text(
                        "Total Cases",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.cyan),
                        child: Center(
                            child: Text(state.allCase.TotalDeaths.toString(),
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Text(
                        "Total Death",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.cyan),
                        child: Center(
                            child: Text(state.allCase.TotalRecovered.toString(),
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Text(
                        "Total Recovered",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.cyan),
                        child: Center(
                            child: Text(state.allCase.NewConfirmed.toString(),
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Text(
                        "New Cases",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )
            : Center(child: CircularProgressIndicator());
      }),
    );
  }
}
