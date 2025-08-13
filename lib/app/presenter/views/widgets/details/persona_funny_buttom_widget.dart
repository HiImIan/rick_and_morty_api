import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';

class PersonaFunnyButtonWidget extends StatelessWidget {
  const PersonaFunnyButtonWidget({super.key});

  void _showError(BuildContext context, String message) {
    final theme = Theme.of(context);
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    final messenger = ScaffoldMessenger.of(context);

    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: theme.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: theme.colorScheme.error,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = LocalizationService.instance.l10n;
    final theme = Theme.of(context);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {
              _showError(context, l10n.portalGunFunnyError);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              shadowColor: theme.colorScheme.primary,
            ),
            icon: Icon(Icons.explore, size: 24),
            label: Text(
              l10n.openDimensionalPortal,
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {
              _showError(context, l10n.detonateFunnyError);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.error,
              foregroundColor: theme.colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              shadowColor: theme.colorScheme.error,
            ),
            icon: Icon(Icons.warning_amber, size: 24),
            label: Text(
              l10n.detonateNeutrinoBomb,
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
