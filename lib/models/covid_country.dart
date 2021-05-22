class CovidCounty {
  // ignore: non_constant_identifier_names
  List<CovidCaseDetail> AllCountryList;
  CovidCounty();
  CovidCaseDetail getById(int id) =>
      AllCountryList.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  CovidCaseDetail getByPosition(int pos) => AllCountryList[pos];
}

class CovidCaseDetail {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  CovidCaseDetail(
      this.id, this.name, this.desc, this.price, this.color, this.image);
}
