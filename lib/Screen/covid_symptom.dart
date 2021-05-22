import 'package:flutter/material.dart';

class CovidSymptom extends StatelessWidget {
  String s = "";
  String symptoms =
      "The COVID-19 virus affects different people in different ways.  COVID-19 is a respiratory disease and most infected people will develop mild to moderate symptoms and recover without requiring special treatment.  People who have underlying medical conditions and those over 60 years old have a higher risk of developing severe disease and death.";
  String symptoms1 = "Common symptoms include:\n\n";
  String symptoms2 = "1-fever" +
      '\n' +
      "2-tiredness" +
      '\n' +
      "3-dry cough." +
      '\n' +
      "\nOther symptoms include\n";

  String symptoms3 =
      "\n\n1-shortness of breath \n 2-aches and pains \n 3- sore throat \n 4-and very few people will report diarrhoea, nausea or a runny nose";
  String symptoms4 =
      "\n\nPeople with mild symptoms who are otherwise healthy should self-isolate and contact their medical provider or a COVID-19 information line for advice on testing and referral.\nPeople with fever, cough or difficulty breathing should call their doctor and seek medical attention";
  String symptoms5 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Covid-19 Symptom",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: SingleChildScrollView(
            child: Text(
              s +
                  symptoms +
                  symptoms1 +
                  symptoms2 +
                  symptoms3 +
                  symptoms4 +
                  symptoms5,
              style: TextStyle(fontSize: 20),
            ),
          )),
    );
  }
}
