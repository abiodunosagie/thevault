import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../constants/constants.dart';
import 'forgot_password_btn_widget.dart';

class ForgetPasswordScreen{
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(
          20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Make a selection!',
              style: AppTheme.kHeading.copyWith(
                color: TheVaultColor.kS0,
              ),
            ),
            Text(
              'Select one of the options given below to reset your password.',
              style: AppTheme.kBody.copyWith(
                color: TheVaultColor.kS5,
                fontSize: 18,
              ),
            ),
            const Gap(20),
            ForgotPasswordWidget(
              btnIcon: Icons.mail_outline_outlined,
              heading: 'Email',
              subText: 'Reset via Mail Verification',
              onTap: () {},
            ),
            const Gap(20),
            ForgotPasswordWidget(
              heading: 'Phone Number',
              subText: 'Reset via Phone Verification',
              btnIcon: Icons.mobile_friendly_rounded,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}