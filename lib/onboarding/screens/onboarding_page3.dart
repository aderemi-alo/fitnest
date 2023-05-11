import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/images/onboarding3-character.svg",
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
                  "Eat Well",
                  style: h2.copyWith(
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
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
