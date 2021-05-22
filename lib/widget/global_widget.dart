import 'package:covid_tracker/models/globalModel.dart';
import 'package:flutter/material.dart';

class GlobalCase extends StatelessWidget {
  final Global allCase;

  const GlobalCase({Key key, this.allCase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
                child: Center(
                    child: Text(
                  allCase.totalConfirm.toString(),
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )),
              ),
              Text(
                "Total Cases",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
                child: Center(
                    child: Text(allCase.totalDeath.toString(),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold))),
              ),
              Text(
                "Total Death",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
                child: Center(
                    child: Text(allCase.totalRecovered.toString(),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold))),
              ),
              Text(
                "Total Recovered",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
                child: Center(
                    child: Text(allCase.newConfirm.toString(),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold))),
              ),
              Text(
                "New Cases",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
