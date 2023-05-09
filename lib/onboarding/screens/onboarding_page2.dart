import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/images/onboarding2-character.svg",
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
                  "Get Burn",
                  style: h2.copyWith(
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Let’s keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
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