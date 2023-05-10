import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
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
    return Container(
      height: 48,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        style: smallText.copyWith(fontWeight: regular, color: gray2),
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          hintStyle: smallText.copyWith(fontWeight: regular, color: gray2),
          prefixIconConstraints: const BoxConstraints(maxHeight: 18),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset(
              iconLocation,
              height: 18,
              width: 18,
              color: gray1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.0)),
          prefixIconColor: gray1,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide:
                  const BorderSide(color: Colors.transparent, width: 0.0)),
          fillColor: borderColor,
        ),
      ),
    );
  }
}
