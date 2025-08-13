import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/presenter/view_models/personas_view_model.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/list/end_list/personas_load_more_widget.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/list/persona_item_widget.dart';

class PersonasListWidget extends StatelessWidget {
  final PersonasViewModel personasViewModel;
  const PersonasListWidget({super.key, required this.personasViewModel});

  @override
  Widget build(BuildContext context) {
    final personas = personasViewModel.personas;
    final length = personas.length;
    return Visibility(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 18,
          crossAxisSpacing: 18,
        ),

        itemCount: length + ((personasViewModel.hasMoreItem) ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == length) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              personasViewModel.load();
            });
          }

          if (index == length && personasViewModel.hasMoreItem) {
            return const PersonasLoadMoreWidget();
          }

          final persona = personas[index];
          return GestureDetector(
            onTap: () {
              personasViewModel.goToDetails(
                context,
                personas.indexOf(persona).toString(),
              );
            },
            child: PersonaItemWidget(persona: persona),
          );
        },
      ),
    );
  }
}
