// ignore_for_file: all

import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';

enum Species {
  human,
  alien,
  humanoid,
  robot,
  unknown,
  poopyButtHole,
  mythologicalCreature,
  animal,
  cronenberg,
  disease,
  notCataloged;

  String string() {
    final l10n = LocalizationService.instance.l10n;
    switch (this) {
      case Species.human:
        return l10n.human;
      case Species.alien:
        return l10n.alien;
      case Species.humanoid:
        return l10n.humanoid;
      case Species.robot:
        return l10n.robot;
      case Species.unknown:
        return l10n.unknown;
      case Species.poopyButtHole:
        return l10n.poopyButtHole;
      case Species.mythologicalCreature:
        return l10n.mythologicalCreature;
      case Species.animal:
        return l10n.animal;
      case Species.cronenberg:
        return l10n.cronenberg;
      case Species.disease:
        return l10n.disease;
      case Species.notCataloged:
        return l10n.notCataloged;
    }
  }
}

extension SpeciesExtension on Species {
  static Species fromString(String value) {
    switch (value.toLowerCase()) {
      case 'human':
        return Species.human;
      case 'alien':
        return Species.alien;
      case 'humanoid':
        return Species.humanoid;
      case 'robot':
        return Species.robot;
      case 'unknown':
        return Species.unknown;
      case 'poopybutthole':
        return Species.poopyButtHole;
      case 'mythological creature':
        return Species.mythologicalCreature;
      case 'animal':
        return Species.animal;
      case 'cronenberg':
        return Species.cronenberg;
      case 'disease':
        return Species.disease;
      default:
        return Species.notCataloged;
    }
  }
}

enum Status {
  alive,
  dead,
  unknown;

  String string() {
    final l10n = LocalizationService.instance.l10n;
    switch (this) {
      case Status.alive:
        return l10n.alive;
      case Status.dead:
        return l10n.dead;
      case Status.unknown:
        return l10n.unknown;
    }
  }
}

extension StatusExtension on Status {
  static Status fromString(String value) {
    switch (value.toLowerCase()) {
      case 'alive':
        return Status.alive;
      case 'dead':
        return Status.dead;
      default:
        return Status.unknown;
    }
  }
}
