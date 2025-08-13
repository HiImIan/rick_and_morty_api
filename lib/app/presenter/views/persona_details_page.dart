import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/assets/app_images.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';
import 'package:rick_and_morty_api/app/presenter/models/persona.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/details/persona_funny_buttom_widget.dart';
import 'package:rick_and_morty_api/app/presenter/views/widgets/details/persona_info_card_widget.dart';

class PersonaDetailPage extends StatelessWidget {
  final Persona persona;

  const PersonaDetailPage({super.key, required this.persona});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final l10n = LocalizationService.instance.l10n;

    final image = persona.image;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.sizeOf(context).height * 0.35,
            pinned: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: theme.colorScheme.primary),
              onPressed: () => Navigator.of(context).pop(),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Persona Image
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: image != null
                        ? Image.network(image, fit: BoxFit.fill)
                        : Image.asset(
                            AppImages.defaultPersona,
                            fit: BoxFit.fill,
                          ),
                  ),
                ],
              ),
            ),
          ),
          // Main content
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Persona name
                  Text(
                    persona.name,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      shadows: [
                        Shadow(
                          color: theme.colorScheme.primary,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    l10n.interdimensionalEntity(persona.id),
                    style: theme.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 30),

                  // Persona Info
                  PersonaInfoCardWidget(
                    title: l10n.vitalStatus,
                    value: persona.status.string(),
                  ),
                  SizedBox(height: 20),
                  PersonaInfoCardWidget(
                    title: l10n.biologicalClassification,
                    value: persona.specie.string(),
                  ),

                  SizedBox(height: 40),

                  const PersonaFunnyButtonWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
