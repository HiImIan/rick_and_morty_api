import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rick_and_morty_api/app/core/services/http/dio_impl.dart';
import 'package:rick_and_morty_api/app/core/services/http/http_service.dart';
import 'package:rick_and_morty_api/app/data/repositories/personas_repository.dart';
import 'package:rick_and_morty_api/app/presenter/view_models/personas_view_model.dart';

List<SingleChildWidget> get providers {
  return [
    Provider<HttpService>(
      create: (_) => DioImpl(Dio(), baseUrl: "https://rickandmortyapi.com/api"),
    ),
    Provider(create: (context) => PersonasRepository(http: context.read())),
    ChangeNotifierProvider(
      create: (ctx) => PersonasViewModel(personasRepository: ctx.read()),
    ),
  ];
}
