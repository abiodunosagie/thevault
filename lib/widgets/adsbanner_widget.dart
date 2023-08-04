import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/model/app_image.dart';

import '../constants/constants.dart';

class AdsBannerWidget extends StatelessWidget {
  const AdsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: TheVaultColor.kPrimaryColor,
        border: Border.all(
          color: TheVaultColor.kSecondaryColor.withOpacity(
            0.8,
          ),
          width: 0.8,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              2,
              10,
            ),
            blurRadius: 15,
            spreadRadius: 10,
            color: Colors.grey.shade400,
          ),
        ],
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Shopiverse',
                    style: AppTheme.kBigTitle.copyWith(
                      color: TheVaultColor.kWhiteColor,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    "Find the Apple product and\naccesories you're looking.",
                    style: AppTheme.kBodyText.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TheVaultColor.kWhiteColor,
                        foregroundColor: TheVaultColor.kPrimaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        )),
                    onPressed: () {},
                    child: const Text(
                      'Order Now',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Image.asset(
                AppImage.hand,
                // width: 50,
                // height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
