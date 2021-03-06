import 'package:covid_tracker/data/models/globalModel.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class GlobalRepository {
  Future<Global> getGlobal();
}

class GlobalRepo extends GlobalRepository {
  @override
  Future<Global> getGlobal() async {
    final result =
        await http.Client().get("https://api.covid19api.com/summary");

    if (result.statusCode != 200) throw Exception();
    print(result.toString());

    return parsedJson(result.body);
  }

  Global parsedJson(final response) {
    final jsonDecoded = json.decode(response);
    print(jsonDecoded.runtimeType);

    //final jsonGlobal = jsonDecoded["Global"];

    Global g = Global.fromJson(jsonDecoded);

    return g;
  }
}
