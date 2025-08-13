import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_api/app/core/dependencies/dependencies.dart';
import 'package:rick_and_morty_api/app/core/l10n/app_localizations.dart';
import 'package:rick_and_morty_api/app/core/l10n/l10n.dart';
import 'package:rick_and_morty_api/app/core/routes/router.dart';
import 'package:rick_and_morty_api/app/core/themes/dark_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: AppTheme.theme,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale('pt'),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        routerConfig: routerConfig(),
        builder: (context, child) {
          LocalizationService.initialize(AppLocalizations.of(context)!);
          return child!;
        },
      ),
    );
  }
}
