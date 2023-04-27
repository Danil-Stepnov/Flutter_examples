import 'package:flutter/material.dart';

class FlutterTodosTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.lightBlueAccent,
      ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.lightBlueAccent,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.deepPurple,
      ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.deepPurple,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
