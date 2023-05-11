import 'package:flutter/material.dart';
import 'src/features/onboarding/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'src/constants/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:fitnest/src/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: FitnestAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
