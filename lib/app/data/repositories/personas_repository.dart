import 'package:rick_and_morty_api/app/core/services/http/http_service.dart';
import 'package:rick_and_morty_api/app/core/services/result/result.dart';
import 'package:rick_and_morty_api/app/data/dto/personas_dto.dart';
import 'package:rick_and_morty_api/app/data/mappers/persona_mapper.dart';

class PersonasRepository {
  final HttpService _http;

  PersonasRepository({required HttpService http}) : _http = http;

  Future<Result<PersonasDto>> get(int page) async {
    final result = await _http.get<List>('/character/?page=$page');

    return result.map((response) {
      return PersonasDto(
        pages: response.pages,
        personas: PersonaMapper.toMapList(List<Map>.from(response.body)),
      );
    });
  }
}
