import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static MaterialColor get gray => const MaterialColor(0xFF667085, <int, Color>{
        25: Color(0xFFFCFCFD),
        50: Color(0xFFF9FAFB),
        100: Color(0xFFF2F4F7),
        200: Color(0xFFEAECF0),
        300: Color(0xFFD0D5DD),
        400: Color(0xFF98A2B3),
        500: Color(0xFF667085),
        600: Color(0xFF475467),
        700: Color(0xFF344054),
        800: Color(0xFF1D2939),
        900: Color(0xFF101828),
      });

  // static MaterialColor get primary => const MaterialColor(0xFF25B81D, <int, Color>{
  //       25: Color(0xFFd3f1d2),
  //       50: Color(0xFFA8E3A5),
  //       100: Color(0xFF7CD477),
  //       200: Color(0xFF66CD61),
  //       300: Color(0xFF51C64A),
  //       400: Color(0xFF3BBF34),
  //       500: Color(0xFF25B81D),
  //       600: Color(0xFF1E9317),
  //       700: Color(0xFF166E11),
  //       800: Color(0xFF0F4A0C),
  //       900: Color(0xFF041203),
  //     });

  static MaterialColor get primary => Colors.blue;

  static MaterialColor get error => const MaterialColor(0xFFFD4438, <int, Color>{
        25: Color(0xFFFFFBFA),
        50: Color(0xFFFEF3F2),
        100: Color(0xFFFEE4E2),
        200: Color(0xFFFECDCA),
        300: Color(0xFFFDA29B),
        400: Color(0xFFF97066),
        500: Color(0xFFFD4438),
        600: Color(0xFFD92D20),
        700: Color(0xFFB42318),
        800: Color(0xFF912018),
        900: Color(0xFF7A271A)
      });

  static MaterialColor get warring => const MaterialColor(0xFFF79009, <int, Color>{
        25: Color(0xFFFFFCF5),
        50: Color(0xFFFFFAEB),
        100: Color(0xFFFEF0C7),
        200: Color(0xFFFEDF89),
        300: Color(0xFFFEC84B),
        400: Color(0xFFFDB022),
        500: Color(0xFFF79009),
        600: Color(0xFFDC6803),
        700: Color(0xFFB54708),
        800: Color(0xFF93370D),
        900: Color(0xFF7A2E0E)
      });

  static MaterialColor get success => const MaterialColor(0xFF12B76A, <int, Color>{
    25: Color(0xFFF6FEF9),
    50: Color(0xFFECFDF3),
    100: Color(0xFFD1FADF),
    200: Color(0xFFA6F4C5),
    300: Color(0xFF6CE9A6),
    400: Color(0xFF32D583),
    500: Color(0xFF12B76A),
    600: Color(0xFF039855),
    700: Color(0xFF027A48),
    800: Color(0xFF05603A),
    900: Color(0xFF054F31)
  });

  static MaterialColor get secondary => const MaterialColor(0xFFFB45BA, <int, Color>{
    25: Color(0xFFffecf8),
    50: Color(0xFFfec7ea),
    100: Color(0xFFfda2dd),
    200: Color(0xFFfc7dcf),
    300: Color(0xFFfc6ac8),
    400: Color(0xFFfb58c1),
    500: Color(0xFFFB45BA),
    600: Color(0xFFc93795),
    700: Color(0xFF972970),
    800: Color(0xFF641c4a),
    900: Color(0xFF320e25)
  });

  static Color get white => const Color(0xFFFFFFFF);

  static Color get black => const Color(0xFF000000);
}
