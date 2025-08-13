import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/assets/app_images.dart';
import 'package:rick_and_morty_api/app/presenter/models/persona.dart';

class PersonaItemWidget extends StatelessWidget {
  final Persona persona;
  const PersonaItemWidget({super.key, required this.persona});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = persona.image;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Stack(
        children: [
          if (image != null)
            Image.network(image, fit: BoxFit.contain)
          else
            Image.asset(AppImages.defaultPersona),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
              ),

              child: Text(
                persona.name,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: theme.primaryColor, blurRadius: 4)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
