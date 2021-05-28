import 'package:covid_tracker/businesslogic/bloc/global_bloc.dart';
import 'package:covid_tracker/businesslogic/bloc/global_bloc_event.dart';
import 'package:covid_tracker/businesslogic/bloc/global_state.dart';

import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:covid_tracker/widget/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalBloc globalBloc;

  @override
  void initState() {
    super.initState();
    globalBloc = BlocProvider.of<GlobalBloc>(context);
    globalBloc.add(FetchGlobalEvent());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: BlocBuilder<GlobalBloc, GlobalState>(
        builder: (context, state) {
          if (state is GlobalLoadedState) {
            CircularProgressIndicator();
            print(state.g.toString());
          } else {
            CircularProgressIndicator();
            print('Error');
          }
          //.add(FetchGlobalCaseEvent());
        },
      )),
    );
  }
}
