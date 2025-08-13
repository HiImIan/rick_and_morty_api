import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/app/core/themes/custom_colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData.dark(useMaterial3: false).copyWith(
    scaffoldBackgroundColor: CustomColors.background,
    appBarTheme: AppBarTheme(
      color: CustomColors.background,
      elevation: 0,
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: CustomColors.neonGreen),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        alignment: AlignmentDirectional.centerStart,
        iconAlignment: IconAlignment.start,
        backgroundColor: CustomColors.neonGreen,
        foregroundColor: CustomColors.black,
        iconColor: CustomColors.black,
        elevation: 4,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: CustomColors.neonGreen),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: CustomColors.neonGreen,
        shadows: [Shadow(color: CustomColors.neonGreen, blurRadius: 20)],
      ),
      titleMedium: TextStyle(color: CustomColors.neonGreen),

      headlineSmall: TextStyle(color: CustomColors.neonGreen),

      bodyLarge: TextStyle(color: CustomColors.white),
      bodyMedium: TextStyle(color: CustomColors.black),
      bodySmall: TextStyle(color: CustomColors.graySwatch[400]),

      labelLarge: TextStyle(
        color: CustomColors.neonGreen,
        shadows: [Shadow(color: CustomColors.black, blurRadius: 4)],
      ),
      labelSmall: TextStyle(color: CustomColors.neonGreen),
    ),
    colorScheme:
        ColorScheme.fromSeed(
          seedColor: CustomColors.neonGreen,
          brightness: Brightness.dark,
        ).copyWith(
          error: CustomColors.redSwatch,
          surface: CustomColors.background,
          primary: CustomColors.neonGreen,
          primaryContainer: CustomColors.backgroundNeon,
          onPrimary: CustomColors.black,
        ),
  );
}
