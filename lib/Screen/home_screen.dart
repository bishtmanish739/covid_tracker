import 'package:covid_tracker/Screen/rander_homepage.dart';
import 'package:covid_tracker/businesslogic/bloc/global_bloc.dart';
import 'package:covid_tracker/businesslogic/bloc/global_bloc_event.dart';
import 'package:covid_tracker/businesslogic/bloc/global_state.dart';
import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:covid_tracker/widget/custom_search_delegate.dart';
import 'package:covid_tracker/widget/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_search_bar/flutter_search_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalBloc globalBloc;
  List<Country> country;

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
        title: BlocBuilder<GlobalBloc, GlobalState>(
          builder: (context, state) {
            if (state is GlobalLoadedState) {
              country = state.g.countries;
            }
            return Text(
              'Lets Track Covid Cases',
              style: TextStyle(fontSize: 18),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showSearch(
                    context: context, delegate: CustomSearchDelegate(country));
              },
              icon: Icon(
                Icons.search,
              ))
        ],
      ),
      drawer: MyDrawer(),
      body: Container(child: BlocBuilder<GlobalBloc, GlobalState>(
        builder: (context, state) {
          if (state is GlobalLoadedState) {
            //print('i am loaded' + state.g.date.toString());
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SearchBar(),
                  // Expanded(child: SearchList()),
                  Expanded(child: HomePageRander(state.g)),
                ],
              ),
            );
            // CustomScrollView(slivers: <Widget>[HomePageRander(state.g)]);
          } else {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Loading.....',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                CircularProgressIndicator(),
              ],
            ));
          }
          //.add(FetchGlobalCaseEvent());
        },
      )),
    );
  }
}
