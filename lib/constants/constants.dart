import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheVaultColor {
  static const kPrimaryColor = Color(0xff843667);
  static const kSecondaryColor = Color(0xff022238);
  static const kThirdColor = Color(0xffFFDCBC);
  static const kLightBackground = Color(0xffe8f6fb);
  static const kWhiteColor = Color(0xffffffff);
  static const kBlackColor = Color(0xff000000);
  static const kGreen = Color(0xff3CB371);
}

class AppTheme {
  static TextStyle kBigTitle = GoogleFonts.poppins(
    color: TheVaultColor.kWhiteColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const kBodyText = TextStyle(
    color: Colors.white,
    fontSize: 12,
  );
  static TextStyle kBodyTextTwo = GoogleFonts.poppins(
    color: Colors.grey.shade500,
    fontSize: 12,
  );

  static TextStyle kCardTitle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle kHeadingOne = GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: TheVaultColor.kSecondaryColor);

  static TextStyle kSeeAllText = GoogleFonts.poppins(
      color: TheVaultColor.kSecondaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 15);
}
