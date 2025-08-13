import 'package:rick_and_morty_api/app/presenter/models/helpers/enums.dart';
import 'package:rick_and_morty_api/app/presenter/models/persona.dart';

abstract class PersonaMapper {
  static Persona toMap(Map json) {
    return Persona(
      id: json["id"].toString(),
      image: json["image"],
      name: json["name"],
      status: StatusExtension.fromString(json["status"]),
      specie: SpeciesExtension.fromString(json["species"]),
    );
  }

  static List<Persona> toMapList(List<Map> response) {
    return response.map(toMap).toList();
  }
}
