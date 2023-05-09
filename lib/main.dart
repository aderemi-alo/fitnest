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
      theme: ThemeData(scaffoldBackgroundColor: white),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
