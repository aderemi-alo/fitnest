import 'package:flutter/material.dart';
import 'onboarding/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
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
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
