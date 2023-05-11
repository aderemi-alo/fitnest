import 'package:flutter/material.dart';
import 'package:fitnest/src/constants/constants.dart';

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton(
      {super.key, required this.buttonText, required this.function});

  final Widget buttonText;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: blueLinear,
          borderRadius: BorderRadius.circular(99),
          boxShadow: [shadow],
        ),
        child: ElevatedButton(
          onPressed: function,
          child: buttonText,
        ),
      ),
    );
  }
}
