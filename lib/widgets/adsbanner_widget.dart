import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/model/my_product_model.dart';

import '../constants/constants.dart';
import '../views/shop.dart';

class AdsBannerWidget extends ConsumerWidget {
  const AdsBannerWidget({
    required this.liveProductIndex,
    required this.userList,
    super.key,
  });
  final int liveProductIndex;
  final List<UserProductModel> userList;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: TheVaultColor.kWhiteColor,
        // border: Border.all(
        //   color: TheVaultColor.kSecondaryColor.withOpacity(
        //     0.8,
        //   ),
        //   width: 0.8,
        // ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              1,
              5,
            ),
            blurRadius: 20,
            spreadRadius: 5,
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
                      color: TheVaultColor.kSecondaryColor,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    "Find the Apple product and\naccesories you're looking.",
                    style: AppTheme.kBodyText.copyWith(
                      fontWeight: FontWeight.w500,
                      color: TheVaultColor.kSecondaryColor,
                    ),
                  ),
                  const Gap(8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TheVaultColor.kSecondaryColor,
                        foregroundColor: TheVaultColor.kWhiteColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Shop(),
                        ),
                      );
                    },
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
                bottom: 20,
              ),
              child: Image.network(
                userList[liveProductIndex].image,
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
