import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';
import 'package:rick_and_morty_api/app/presenter/view_models/personas_view_model.dart';

class PersonaErrorListWidget extends StatelessWidget {
  final PersonasViewModel personasViewModel;
  const PersonaErrorListWidget({super.key, required this.personasViewModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final l10n = LocalizationService.instance.l10n;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: theme.colorScheme.error),
          SizedBox(height: 16),
          Text(
            l10n.errorList,
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: personasViewModel.refresh,
            child: Text(
              l10n.tryAgain,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
