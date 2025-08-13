import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';

class PersonaEmptyListWidget extends StatelessWidget {
  const PersonaEmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = LocalizationService.instance.l10n;
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            l10n.loading,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 20),
          CircularProgressIndicator(color: theme.colorScheme.primary),
        ],
      ),
    );
  }
}
