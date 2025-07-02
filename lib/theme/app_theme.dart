import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.indigo,
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white),
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
