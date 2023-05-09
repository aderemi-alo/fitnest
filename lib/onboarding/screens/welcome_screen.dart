import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      SizedBox(height: 5),
                      Text(
                        "Everybody Can Train",
                        style: subtitle.copyWith(color: gray1),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 315,
                    decoration: BoxDecoration(
                        gradient: blueLinear,
                        borderRadius: BorderRadius.circular(99)),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style:
                            largeText.copyWith(fontWeight: bold, color: white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
