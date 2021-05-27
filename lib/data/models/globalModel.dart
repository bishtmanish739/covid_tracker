import 'dart:convert';

class Global {
  final int NewConfirmed;
  final int TotalConfirmed;
  final int NewDeaths;
  final int TotalDeaths;
  final int NewRecovered;
  final int TotalRecovered;
  final String Date;

  Global(this.NewConfirmed, this.TotalConfirmed, this.NewDeaths,
      this.TotalDeaths, this.NewRecovered, this.TotalRecovered, this.Date);

  Map<String, dynamic> toMap() {
    return {
      'NewConfirmed': NewConfirmed,
      'TotalConfirmed': TotalConfirmed,
      'NewDeaths': NewDeaths,
      'TotalDeaths': TotalDeaths,
      'NewRecovered': NewRecovered,
      'TotalRecovered': TotalRecovered,
      'Date': Date,
    };
  }

  factory Global.fromMap(Map<String, dynamic> map) {
    return Global(
      map['NewConfirmed'],
      map['TotalConfirmed'],
      map['NewDeaths'],
      map['TotalDeaths'],
      map['NewRecovered'],
      map['TotalRecovered'],
      map['Date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Global.fromJson(String source) => Global.fromMap(json.decode(source));
}
