import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:get/get.dart';

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton({
    super.key,
    required this.buttonText,
    required this.page,
  });

  final Widget buttonText;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(page, transition: Transition.rightToLeft),
      child: Container(
        height: 60,
        width: 315,
        decoration: BoxDecoration(
            boxShadow: [shadow],
            gradient: blueLinear,
            borderRadius: BorderRadius.circular(99)),
        child: Center(child: buttonText),
      ),
    );
  }
}
