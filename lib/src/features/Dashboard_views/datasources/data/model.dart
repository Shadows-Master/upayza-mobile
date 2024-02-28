import 'package:awesome_extensions/awesome_extensions.dart';

class Model {
  final String name;
  final String surname;
  final String countryName;
  final String countryFlag;

  String generateInitial({required String name, required String surname}) {
    return name[0].capitalizeFirst() + surname[0].capitalizeFirst();
  }

  Model({
    required this.name,
    required this.surname,
    required this.countryName,
    required this.countryFlag,
  });
}

final List<Model> data = [
  Model(
    name: "Daryl",
    surname: "Zambo",
    countryName: "Ivory Coast",
    countryFlag: "https://www.worldometers.info/img/flags/iv-flag.gif",
  ),
  Model(
    name: "Nono",
    surname: "Idriss",
    countryName: "Cameroon",
    countryFlag: "https://www.worldometers.info/img/flags/cm-flag.gif",
  ),
  Model(
    name: "Olivia",
    surname: "Stevens",
    countryName: "United States",
    countryFlag: "https://www.worldometers.info/img/flags/us-flag.gif",
  ),
  Model(
    name: "Kristi",
    surname: "Rhoades",
    countryName: "France",
    countryFlag: "https://www.worldometers.info/img/flags/fr-flag.gif",
  ),
  Model(
    name: "Cooper",
    surname: "Ulrich",
    countryName: "Canada",
    countryFlag: "https://www.worldometers.info/img/flags/ca-flag.gif",
  ),
  Model(
    name: "Crouch",
    surname: "Findlay",
    countryName: "Cameroon",
    countryFlag: "https://www.worldometers.info/img/flags/as-flag.gif",
  ),
];
