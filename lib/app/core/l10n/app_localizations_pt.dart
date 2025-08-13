// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get dimensionalData => 'Arquivo Interdimensional';

  @override
  String get errorList => 'Base de dados fortemente protegida...';

  @override
  String get tryAgain => 'Rickear Novamente!';

  @override
  String get loading => 'Rickeando arquivos da Cidadela!';

  @override
  String get loadingMorePersonas => 'Analisando Multiverso...';

  @override
  String get human => 'Humano(a)';

  @override
  String get alien => 'Alienígena';

  @override
  String get humanoid => 'Humanoide';

  @override
  String get robot => 'Robô';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get poopyButtHole => 'Bunda Cagada';

  @override
  String get mythologicalCreature => 'Criatura Mitológica';

  @override
  String get animal => 'Animal';

  @override
  String get cronenberg => 'Cronenberg';

  @override
  String get disease => 'Doença';

  @override
  String get notCataloged => 'Não Catalogado';

  @override
  String get alive => 'Vivo(a)';

  @override
  String get dead => 'Morto(a)';

  @override
  String get vitalStatus => 'Status Vital';

  @override
  String get biologicalClassification => 'Classificação Biológica';

  @override
  String interdimensionalEntity(String id) {
    return 'Ser Interdimensional #$id';
  }

  @override
  String get openDimensionalPortal => 'Abrir portal Dimensional';

  @override
  String get portalGunFunnyError =>
      'Dispositivo sem RAM suficiente para essa tarefa';

  @override
  String get detonateNeutrinoBomb => 'Lançar uma Bomba de Neutrinos';

  @override
  String get detonateFunnyError =>
      'Infelizmente Rick Prime usou a bomba antes...';
}
