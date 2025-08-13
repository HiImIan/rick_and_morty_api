import 'package:flutter/material.dart';

/// Abstract class for storing colors related to the light theme of the application.
abstract class CustomColors {
  ///Gray color swatch.
  static const graySwatch = MaterialColor(0xFF3E3E3E, <int, Color>{
    50: Color(0xFF848484),
    100: Color(0xFFEEEEEE),
    200: Color(0xFFCBCBCB),
    300: Color(0xFFB2B2B2),
    400: Color(0xFF797979),
    500: Color(0xFF585858),
    600: Color(0xFF3E3E3E),
    700: Color(0xFF252525),
    800: Color(0xFF000000),
  });

  ///Red color swatch.
  static const redSwatch = MaterialColor(0xFFC1362F, <int, Color>{
    100: Color(0xFFFFE8E2),
    200: Color(0xFFFEADA4),
    300: Color(0xFFFA8080),
    400: Color(0xFFF84A4A),
    500: Color(0xFFD83D34),
    600: Color(0xFFC1362F),
    700: Color(0xFF941411),
    800: Color(0xFF811A18),
  });

  // Background colors

  static const Color backgroundNeon = Color(0x45051602);

  static const Color background = Color(0xFF10101A);

  static const Color transparent = Color(0x00000000);

  static const Color white = Color(0xFFFFFFFF);

  // hight contrast colors

  static const Color neonGreen = Color(0xFF39FF14);
  static const Color black = Colors.black;

  static const Color black0Dot5Opacity = Color(0x7E000000);
}
