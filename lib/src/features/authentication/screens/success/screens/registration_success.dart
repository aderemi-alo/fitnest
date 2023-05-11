import 'package:fitnest/src/features/dashboard/home.dart';
import 'package:fitnest/src/reusable_widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:fitnest/src/constants/constants.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationSuccess extends StatelessWidget {
  const RegistrationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 102),
                  SvgPicture.asset("assets/images/Welcome.svg"),
                  const SizedBox(height: 40),
                  Text(
                    "Welcome Stefani",
                    style: h4.copyWith(fontWeight: bold),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 85.0),
                    child: Text(
                      "You are all set now, let’s reach your goals together with us",
                      textAlign: TextAlign.center,
                      style:
                          smallText.copyWith(fontWeight: regular, color: gray1),
                    ),
                  ),
                ],
              ),
            ),
            CustomBlueButton(
              buttonText: Text(
                "Go To Home",
                style: largeText.copyWith(
                  fontWeight: bold,
                  color: white,
                ),
              ),
              function: () => Get.to(() => const Home()),
            ),
          ],
        ),
      ),
    );
  }
}
