import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/l10n/app_localizations.dart';

class L10n {
  static final all = [const Locale('pt', 'BR'), const Locale('en', 'US')];
  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;
}

extension L10nExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

class LocalizationService {
  static LocalizationService? _instance;
  static LocalizationService get instance => _instance!;

  AppLocalizations? _localizations;
  AppLocalizations get l10n => _localizations!;

  static void initialize(AppLocalizations localizations) {
    _instance = LocalizationService._();
    _instance!._localizations = localizations;
  }

  LocalizationService._();
}
