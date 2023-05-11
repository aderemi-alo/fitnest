import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

//Colors

final LinearGradient blueLinear = LinearGradient(colors: [
  HexColor("#92A3FD"),
  HexColor("#9DCEFF"),
]);

final LinearGradient purpleLinear = LinearGradient(colors: [
  HexColor("#C58BF2"),
  HexColor("#EEA4CE"),
]);

final Color black = HexColor("#1D1617");
final Color white = HexColor("#FFFFFF");
final Color gray1 = HexColor("#7B6F72");
final Color gray2 = HexColor("#ADA4A5");
final Color gray3 = HexColor("#DDDADA");
final Color borderColor = HexColor("#F7F8F8");

//Typography

const FontWeight bold = FontWeight.w700;
const FontWeight semiBold = FontWeight.w600;
const FontWeight medium = FontWeight.w500;
const FontWeight regular = FontWeight.w400;

const TextStyle h1 = TextStyle(fontFamily: "Poppins", fontSize: 26);
const TextStyle h2 = TextStyle(fontFamily: "Poppins", fontSize: 24);
const TextStyle h3 = TextStyle(fontFamily: "Poppins", fontSize: 22);
const TextStyle h4 = TextStyle(fontFamily: "Poppins", fontSize: 20);

const TextStyle subtitle = TextStyle(fontFamily: "Poppins", fontSize: 18);

const TextStyle largeText = TextStyle(fontFamily: "Poppins", fontSize: 16);
const TextStyle mediumText = TextStyle(fontFamily: "Poppins", fontSize: 14);
const TextStyle smallText = TextStyle(fontFamily: "Poppins", fontSize: 12);

const TextStyle caption = TextStyle(fontFamily: "Poppins", fontSize: 10);

//Shadow for Cards and Buttons
final BoxShadow shadow = BoxShadow(
  color: Colors.transparent.withOpacity(0.15),
  blurRadius: 22,
  offset: const Offset(0, 10),
);
