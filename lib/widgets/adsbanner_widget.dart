import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        color: kSecondaryColor,
        border: Border.all(
          color: kSecondaryColor.withOpacity(
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
                  const Text(
                    'The Meat Vault',
                    style: AppTheme.kBigTitle,
                  ),
                  const Gap(8),
                  Text(
                    "Find the Apple product and\naccesories you're looking.",
                    style: AppTheme.kBodyText.copyWith(
                        color: Colors.white.withOpacity(
                      0.8,
                    )),
                  ),
                  const Gap(8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kWhiteColor,
                        foregroundColor: kSecondaryColor,
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
                      'Buy fresh meat',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            'assets/products/livechicken.png',
          ),
        ],
      ),
    );
  }
}
