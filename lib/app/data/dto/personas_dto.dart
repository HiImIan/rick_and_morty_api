import 'package:rick_and_morty_api/app/presenter/models/persona.dart';

class PersonasDto {
  final int pages;
  final List<Persona> personas;

  const PersonasDto({required this.pages, required this.personas});
}
