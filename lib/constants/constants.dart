import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheVaultColor {
  //primary color swatch
  static const kP0 = Color(0xfff1abb9);
  static const kP1 = Color(0xfff2b3c0);
  static const kP2 = Color(0xfff4bcc7);
  static const kP3 = Color(0xfff5c4ce);
  static const kP4 = Color(0xfff7cdd5);
  static const kP5 = Color(0xfff8d5dc);
  static const kP6 = Color(0xfff9dde3);
  static const kP7 = Color(0xfffbe6ea);
  static const kP8 = Color(0xfffceef1);
  static const kP9 = Color(0xfffef7f8);
//secondary color swatch
  static const kS0 = Color(0xff022238);
  static const kS1 = Color(0xff1b384c);
  static const kS2 = Color(0xff354e60);
  static const kS3 = Color(0xff4e6474);
  static const kS4 = Color(0xff677a88);
  static const kS5 = Color(0xff81919c);
  static const kS6 = Color(0xff9aa7af);
  static const kS7 = Color(0xffb3bdc3);
  static const kS8 = Color(0xffccd3d7);
  static const kS9 = Color(0xffe6e9eb);

  static const kWhite = Color(0xffffffff);
  static const kBlack = Color(0xff000000);
  static const kGreen = Color(0xff3CB371);
  static const kLink = Colors.blue;
}

///Global text style.
class AppTheme {
  static TextStyle kHeading = GoogleFonts.poppins(
    color: TheVaultColor.kWhite,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const kBody = TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
}
