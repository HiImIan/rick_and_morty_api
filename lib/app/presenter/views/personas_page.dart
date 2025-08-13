import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';
import 'package:rick_and_morty_api/app/presenter/view_models/personas_view_model.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/list/empty_list/persona_empty_list_widget.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/list/empty_list/persona_error_list_widget.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/list/personas_list_widget.dart';

class PersonasPage extends StatefulWidget {
  final PersonasViewModel personasViewModel;
  const PersonasPage({super.key, required this.personasViewModel});

  @override
  State<PersonasPage> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<PersonasPage> {
  PersonasViewModel get personasViewModel => widget.personasViewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => personasViewModel.load(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final l10n = LocalizationService.instance.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.dimensionalData, style: theme.textTheme.titleLarge),

        actions: [
          IconButton(
            icon: const Icon(Icons.replay_outlined),
            onPressed: personasViewModel.refresh,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: AnimatedBuilder(
          animation: personasViewModel,
          builder: (_, child) {
            final hasError = personasViewModel.error != null;
            final isLoading = personasViewModel.isLoading;

            if (isLoading && personasViewModel.personas.isEmpty) {
              return PersonaEmptyListWidget();
            }

            if (hasError) {
              return PersonaErrorListWidget(
                personasViewModel: personasViewModel,
              );
            }

            return PersonasListWidget(personasViewModel: personasViewModel);
          },
        ),
      ),
    );
  }
}
