// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get dimensionalData => 'Dimensional Data';

  @override
  String get errorList => 'Strongly protected database ...';

  @override
  String get tryAgain => 'Rick again';

  @override
  String get loading => 'Ricking the Citadel’s files';

  @override
  String get loadingMorePersonas => 'Analyzing Multiverse...';

  @override
  String get human => 'Human';

  @override
  String get alien => 'Alien';

  @override
  String get humanoid => 'Humanoid';

  @override
  String get robot => 'Robot';

  @override
  String get unknown => 'Unknown';

  @override
  String get poopyButtHole => 'Poopy Butt Hole';

  @override
  String get mythologicalCreature => 'Mythological Creature';

  @override
  String get animal => 'Animal';

  @override
  String get cronenberg => 'Cronenberg';

  @override
  String get disease => 'Disease';

  @override
  String get notCataloged => 'Not Cataloged';

  @override
  String get alive => 'Alive';

  @override
  String get dead => 'Dead';

  @override
  String get vitalStatus => 'Life Status';

  @override
  String get biologicalClassification => 'Biological Classification';

  @override
  String interdimensionalEntity(String id) {
    return 'Interdimensional Creature #$id';
  }

  @override
  String get openDimensionalPortal => 'Open Dimensional Portal';

  @override
  String get portalGunFunnyError =>
      'Device does not have enough RAM for this task';

  @override
  String get detonateNeutrinoBomb => 'Detonate Neutrino Bomb';

  @override
  String get detonateFunnyError =>
      'Unfortunately, Rick Prime used the bomb first..';
}
