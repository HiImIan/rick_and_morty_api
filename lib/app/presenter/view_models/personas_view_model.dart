import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_api/app/core/routes/routes.dart';
import 'package:rick_and_morty_api/app/data/dto/personas_dto.dart';
import 'package:rick_and_morty_api/app/data/repositories/personas_repository.dart';
import 'package:rick_and_morty_api/app/presenter/models/persona.dart';

class PersonasViewModel extends ChangeNotifier {
  final PersonasRepository _personasRepository;

  PersonasDto? _dto;
  List<Persona> get personas => _personas;
  final List<Persona> _personas = [];

  bool get hasMoreItem => _dto == null || _currentPage != _dto!.pages;
  int _currentPage = 0;

  bool get isLoading => _isLoading;
  bool _isLoading = false;

  String? get error => _error;
  String? _error;

  PersonasViewModel({required PersonasRepository personasRepository})
    : _personasRepository = personasRepository;

  Future<void> load() async {
    if (isLoading) return;
    if (_dto != null && _currentPage + 1 > _dto!.pages) return;
    _currentPage += 1;
    _error = null;
    _isLoading = true;
    notifyListeners();

    final result = await _personasRepository.get(_currentPage);

    result.fold((error) => _error = error.message, (dto) {
      _dto = dto;
      _personas.addAll(_dto!.personas);
    });
    _isLoading = false;
    notifyListeners();
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _personas.clear();
    load();
  }

  void goToDetails(BuildContext context, String personaId) =>
      context.push(Routes.personaDetails(personaId));
}
