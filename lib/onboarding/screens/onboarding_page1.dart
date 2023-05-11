import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/images/onboarding1-character.svg",
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track Your Goal",
                  style: h2.copyWith(
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                  style: mediumText.copyWith(fontWeight: regular, color: gray1),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
