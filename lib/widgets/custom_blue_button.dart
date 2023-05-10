import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:get/get.dart';

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton(
      {super.key, required this.buttonText, required this.function});

  final Widget buttonText;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
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
