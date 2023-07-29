import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff843667);
const kSecondaryColor = Color(0xff022238);
const kThirdColor = Color(0xffFFDCBC);
const kLightBackground = Color(0xffe8f6fb);
const kWhiteColor = Color(0xffffffff);
const kBlackColor = Color(0xff000000);
const kPrimaryTwo = Color(0xffffe5b4);
const kSecondaryTwo = Color(0xffa52c29);
const kSecondaryThree = Color(0xffEA6113);

class AppTheme {
  static const kBigTitle = TextStyle(
    color: kWhiteColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const kBodyText = TextStyle(
    color: Colors.white,
    fontSize: 12,
  );
  static final kBodyTextTwo = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12,
  );

  static const kCardTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const kHeadingOne = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: kSecondaryColor);

  static const kSeeAllText = TextStyle(
      color: kSecondaryThree, fontWeight: FontWeight.w500, fontSize: 15);
}
