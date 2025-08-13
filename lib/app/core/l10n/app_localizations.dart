import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @dimensionalData.
  ///
  /// In pt, this message translates to:
  /// **'Arquivo Interdimensional'**
  String get dimensionalData;

  /// No description provided for @errorList.
  ///
  /// In pt, this message translates to:
  /// **'Base de dados fortemente protegida...'**
  String get errorList;

  /// No description provided for @tryAgain.
  ///
  /// In pt, this message translates to:
  /// **'Rickear Novamente!'**
  String get tryAgain;

  /// No description provided for @loading.
  ///
  /// In pt, this message translates to:
  /// **'Rickeando arquivos da Cidadela!'**
  String get loading;

  /// No description provided for @loadingMorePersonas.
  ///
  /// In pt, this message translates to:
  /// **'Analisando Multiverso...'**
  String get loadingMorePersonas;

  /// No description provided for @human.
  ///
  /// In pt, this message translates to:
  /// **'Humano(a)'**
  String get human;

  /// No description provided for @alien.
  ///
  /// In pt, this message translates to:
  /// **'Alienígena'**
  String get alien;

  /// No description provided for @humanoid.
  ///
  /// In pt, this message translates to:
  /// **'Humanoide'**
  String get humanoid;

  /// No description provided for @robot.
  ///
  /// In pt, this message translates to:
  /// **'Robô'**
  String get robot;

  /// No description provided for @unknown.
  ///
  /// In pt, this message translates to:
  /// **'Desconhecido'**
  String get unknown;

  /// No description provided for @poopyButtHole.
  ///
  /// In pt, this message translates to:
  /// **'Bunda Cagada'**
  String get poopyButtHole;

  /// No description provided for @mythologicalCreature.
  ///
  /// In pt, this message translates to:
  /// **'Criatura Mitológica'**
  String get mythologicalCreature;

  /// No description provided for @animal.
  ///
  /// In pt, this message translates to:
  /// **'Animal'**
  String get animal;

  /// No description provided for @cronenberg.
  ///
  /// In pt, this message translates to:
  /// **'Cronenberg'**
  String get cronenberg;

  /// No description provided for @disease.
  ///
  /// In pt, this message translates to:
  /// **'Doença'**
  String get disease;

  /// No description provided for @notCataloged.
  ///
  /// In pt, this message translates to:
  /// **'Não Catalogado'**
  String get notCataloged;

  /// No description provided for @alive.
  ///
  /// In pt, this message translates to:
  /// **'Vivo(a)'**
  String get alive;

  /// No description provided for @dead.
  ///
  /// In pt, this message translates to:
  /// **'Morto(a)'**
  String get dead;

  /// No description provided for @vitalStatus.
  ///
  /// In pt, this message translates to:
  /// **'Status Vital'**
  String get vitalStatus;

  /// No description provided for @biologicalClassification.
  ///
  /// In pt, this message translates to:
  /// **'Classificação Biológica'**
  String get biologicalClassification;

  /// Ser Interdimensional #{id}
  ///
  /// In pt, this message translates to:
  /// **'Ser Interdimensional #{id}'**
  String interdimensionalEntity(String id);

  /// No description provided for @openDimensionalPortal.
  ///
  /// In pt, this message translates to:
  /// **'Abrir portal Dimensional'**
  String get openDimensionalPortal;

  /// No description provided for @portalGunFunnyError.
  ///
  /// In pt, this message translates to:
  /// **'Dispositivo sem RAM suficiente para essa tarefa'**
  String get portalGunFunnyError;

  /// No description provided for @detonateNeutrinoBomb.
  ///
  /// In pt, this message translates to:
  /// **'Lançar uma Bomba de Neutrinos'**
  String get detonateNeutrinoBomb;

  /// No description provided for @detonateFunnyError.
  ///
  /// In pt, this message translates to:
  /// **'Infelizmente Rick Prime usou a bomba antes...'**
  String get detonateFunnyError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
