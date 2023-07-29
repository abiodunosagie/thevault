import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/constants.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      margin: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(8),
              color: kLightBackground,
              child: Image.asset(
                'assets/products/beef.png',
              ),
            ),
          ),
          const Gap(4),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Name',
                    style: AppTheme.kCardTitle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Short description product',
                    style: AppTheme.kBodyTextTwo,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$ 874',
                        style: AppTheme.kCardTitle,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
