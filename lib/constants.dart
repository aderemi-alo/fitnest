import 'package:google_fonts/google_fonts.dart';
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
const FontWeight regular = FontWeight.w500;
const FontWeight light = FontWeight.w400;

final TextStyle h1 = GoogleFonts.poppins(fontSize: 26);
final TextStyle h2 = GoogleFonts.poppins(fontSize: 24);
final TextStyle h3 = GoogleFonts.poppins(fontSize: 22);
final TextStyle h4 = GoogleFonts.poppins(fontSize: 20);

final TextStyle subtitle = GoogleFonts.poppins(fontSize: 18);

final TextStyle largeText = GoogleFonts.poppins(fontSize: 16);
final TextStyle mediumText = GoogleFonts.poppins(fontSize: 14);
final TextStyle smallText = GoogleFonts.poppins(fontSize: 12);

final TextStyle caption = GoogleFonts.poppins(fontSize: 10);
