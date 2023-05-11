import 'package:flutter/material.dart';
import 'package:fitnest/src/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.iconLocation,
    required this.hintText,
  });

  final TextEditingController controller;
  final String iconLocation;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        style: smallText.copyWith(fontWeight: regular, color: gray2),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIconConstraints: const BoxConstraints(maxHeight: 18),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              iconLocation,
              height: 18,
              width: 18,
              colorFilter: ColorFilter.mode(gray1, BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}
