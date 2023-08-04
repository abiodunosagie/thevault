import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/controllers/product_controller.dart';

import '../constants/constants.dart';

import 'package:the_meat_vault/widgets/product_widget.dart';


class ProductCardWidget extends ConsumerWidget {
  const ProductCardWidget({
    required this.productIndex,
    super.key,
  });

  final int productIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    return Container(

      decoration: BoxDecoration(
        color: TheVaultColor.kWhiteColor,
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
              color: TheVaultColor.kLightBackground,
              child: Image.asset(
                product[productIndex].imgUrl,
              ),
            ),
          ),
          const Gap(4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product[productIndex].title,
                  style: AppTheme.kCardTitle,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  product[productIndex].shortDescription,
                  style: AppTheme.kBodyTextTwo,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${product[productIndex].price}',
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
        ],

      width: double.infinity,
      height: 300,
      //color: Colors.amber,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ProductWidget(),

      ),
    );
  }
}
