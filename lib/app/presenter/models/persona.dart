import 'package:rick_and_morty_api/app/presenter/models/helpers/enums.dart';

class Persona {
  final String id;
  final String name;
  final String? image;
  final Status status;
  final Species specie;

  const Persona({
    required this.id,
    required this.name,
    required this.image,
    required this.status,
    required this.specie,
  });
}
