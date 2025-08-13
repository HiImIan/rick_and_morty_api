import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';

class PersonasLoadMoreWidget extends StatelessWidget {
  const PersonasLoadMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final l10n = LocalizationService.instance.l10n;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Container(
        color: theme.colorScheme.onSecondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: theme.colorScheme.primary,
              strokeWidth: 2,
            ),
            SizedBox(height: 12),
            Text(l10n.loadingMorePersonas, style: theme.textTheme.labelSmall),
          ],
        ),
      ),
    );
  }
}
