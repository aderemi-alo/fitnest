import 'package:fitnest/src/repository/authentication_repository/authentication_repository.dart';
import 'package:fitnest/src/reusable_widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomBlueButton(
              buttonText: const Text("Logout"),
              function: () => AuthenticationRepository.instance.logout())
        ],
      )),
    );
  }
}
