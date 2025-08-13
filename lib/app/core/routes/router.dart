import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_api/app/core/routes/routes.dart';
import 'package:rick_and_morty_api/app/presenter/view_models/personas_view_model.dart';
import 'package:rick_and_morty_api/app/presenter/views/persona_details_page.dart';
import 'package:rick_and_morty_api/app/presenter/views/personas_page.dart';

GoRouter routerConfig() {
  return GoRouter(
    initialLocation: Routes.personas,
    routes: [
      GoRoute(
        path: Routes.personas,
        builder: (context, state) {
          final personaViewModel = context.read<PersonasViewModel>();
          return PersonasPage(personasViewModel: personaViewModel);
        },
        routes: [
          GoRoute(
            path: ":id",
            builder: (context, state) {
              final personaId = state.pathParameters["id"]!;
              final personaViewModel = context.read<PersonasViewModel>();

              final personas = personaViewModel.personas;

              final persona = personas[int.parse(personaId)];

              return PersonaDetailPage(persona: persona);
            },
          ),
        ],
      ),
    ],
  );
}
