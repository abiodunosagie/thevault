import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../constants/constants.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
    required this.heading,
    required this.subText,
    required this.btnIcon,
    required this.onTap,
  });
  final String heading, subText;
  final IconData btnIcon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: TheVaultColor.kS9,
        ),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 50,
              color: TheVaultColor.kS5,
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: AppTheme.kHeading.copyWith(
                    fontSize: 18,
                    color: TheVaultColor.kS3,
                  ),
                ),
                Text(
                  subText,
                  style: AppTheme.kBody.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: TheVaultColor.kS5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
