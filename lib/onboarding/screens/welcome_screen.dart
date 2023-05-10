import 'package:fitnest/onboarding/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitnest/widgets/custom_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/FitnestXlogo.svg"),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Everybody Can Train",
                          style: subtitle.copyWith(color: gray1),
                        ),
                      )
                    ],
                  ),
                ),
                CustomBlueButton(
                  buttonText: Text(
                    "Get Started",
                    style: largeText.copyWith(fontWeight: bold, color: white),
                  ),
                  page: Onboarding(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
