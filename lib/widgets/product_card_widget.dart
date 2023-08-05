import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/controllers/cart_controller.dart';
import 'package:the_meat_vault/controllers/product_controller.dart';
import 'package:the_meat_vault/model/product_model.dart';

import '../constants/constants.dart';

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
                      onPressed: () {
                        ref.read(productNotifierProvider.notifier).isSelectItem(
                            product[productIndex].pid, productIndex);

                        if (product[productIndex].isSelected == false) {
                          ref.read(itemBagProvider.notifier).addNewItemBag(
                                ProductModel(
                                  pid: product[productIndex].pid,
                                  imgUrl: product[productIndex].imgUrl,
                                  title: product[productIndex].title,
                                  price: product[productIndex].price,
                                  shortDescription:
                                      product[productIndex].shortDescription,
                                  longDescription:
                                      product[productIndex].longDescription,
                                  reviews: product[productIndex].reviews,
                                  rating: product[productIndex].rating,
                                ),
                              );
                        } else {
                          ref
                              .read(itemBagProvider.notifier)
                              .removeItem(product[productIndex].pid);
                        }
                      },
                      icon: Icon(
                        product[productIndex].isSelected
                            ? Icons.check_circle
                            : Icons.add_circle,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
