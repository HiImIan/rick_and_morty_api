import 'package:flutter/material.dart';

class PersonaInfoCardWidget extends StatelessWidget {
  final String title;
  final String value;
  const PersonaInfoCardWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 4,
              height: 16,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.primary,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(value, style: theme.textTheme.bodyLarge),
        ),
      ],
    );
  }
}
