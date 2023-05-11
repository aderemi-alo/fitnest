import 'package:flutter/material.dart';
import 'package:fitnest/src/constants/constants.dart';

class FitnestAppTheme {
  FitnestAppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: white,
    textTheme: TextTheme(
      displayLarge: TextStyle(color: black),
      displayMedium: TextStyle(color: black),
      displaySmall: TextStyle(color: black),
      headlineMedium: TextStyle(color: black),
      headlineSmall: TextStyle(color: black),
      titleLarge: TextStyle(color: black),
      titleMedium: TextStyle(color: black),
      titleSmall: TextStyle(color: black),
      bodyLarge: TextStyle(color: black),
      bodyMedium: TextStyle(color: black),
      labelLarge: TextStyle(color: black),
      bodySmall: TextStyle(color: black),
      labelSmall: TextStyle(color: black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: smallText.copyWith(fontWeight: regular, color: gray2),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Colors.transparent, width: 0.0)),
      prefixIconColor: gray1,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Colors.transparent, width: 0.0)),
      fillColor: borderColor,
      filled: true,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        shadowColor: MaterialStatePropertyAll(Colors.transparent),
      ),
    ),
  );
}
