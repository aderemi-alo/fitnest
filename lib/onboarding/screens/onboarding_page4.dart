
import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/images/onboarding4-character.svg",
          width: 414,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Improve Sleep Quality",
                  style: h2.copyWith(
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
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
