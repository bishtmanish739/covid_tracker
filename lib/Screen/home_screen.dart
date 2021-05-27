import 'package:covid_tracker/businesslogic/bloc/global_bloc.dart';
import 'package:covid_tracker/data/models/covid_country.dart';
import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:covid_tracker/widget/global_widget.dart';
import 'package:covid_tracker/widget/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.covid19api.com/summary";
  final _allCase = CovidCounty();
  Global g = null;

  /* @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // final catalogJson =
    //     await rootBundle.loadString("assets/files/catalog.json");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      final dataMap = jsonResponse['Global'] as Map;
      g = new Global(
          dataMap['NewConfirmed'],
          dataMap['TotalConfirmed'],
          dataMap['TotalDeaths'],
          dataMap['NewDeaths'],
          dataMap['NewRecovered'],
          dataMap['TotalRecovered']);

      print('New Covid Cases: ${g.newConfirm}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    // if (response.statusCode == 200) {
    //   var jsonResponse = convert.jsonDecode(response.body);
    //   var itemCount = jsonResponse['totalItems'];
    //   print('Number of books about http: $itemCount.');
    // } else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }

    setState(() {});
  }*/
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
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
        title: Center(child: Text('Covid Tracker ')),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
          // ignore: missing_required_param
          child: BlocListener<GlobalBloc, GlobalCaseState>(
        listener: (BuildContext context, state) {
          if (state is GlobalCaseLoaded) {
            print(state.allCase.toString());
          }
          //.add(FetchGlobalCaseEvent());
        },
        child: Column(
          children: [
            GlobalCase(),
          ],
        ),
      )),
    );
  }
}
