import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/controllers/cart_controller.dart';

import '../controllers/product_controller.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    final cartItem = ref.watch(itemBagProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TheVaultColor.kSecondaryColor,
        title: const Text(
          'Cart',
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       right: 20,
        //     ),
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.local_mall_rounded,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView(
              children: [
                Container(
                  height: 500,
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: cartItem.length,
                    itemBuilder: (context, index) => Card(
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                cartItem[index].imgUrl,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cartItem[index].title,
                                      style: AppTheme.kCardTitle,
                                    ),
                                    Text(
                                      cartItem[index].shortDescription,
                                      style: AppTheme.kBodyTextTwo,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // const Gap(4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${cartItem[index].price}',
                                          style: AppTheme.kCardTitle,
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                ref
                                                    .read(
                                                        productNotifierProvider
                                                            .notifier)
                                                    .decreaseQty(
                                                        product[index].pid);
                                              },
                                              icon: const Icon(
                                                Icons
                                                    .do_not_disturb_on_outlined,
                                              ),
                                            ),
                                            Text(
                                              product[index].qty.toString(),
                                              style:
                                                  AppTheme.kCardTitle.copyWith(
                                                color:
                                                    TheVaultColor.kBlackColor,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                ref
                                                    .read(
                                                        productNotifierProvider
                                                            .notifier)
                                                    .incrementQty(
                                                        product[index].pid);
                                              },
                                              icon: const Icon(
                                                Icons.add_circle_outline,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(20),
                  Text(
                    'Have a coupon code? enter here',
                    style: AppTheme.kBodyTextTwo,
                  ),
                  const Gap(5),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: TheVaultColor.kPrimaryColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SMT2023',
                          style: AppTheme.kBodyTextTwo.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Available',
                              style: AppTheme.kHeadingOne.copyWith(
                                color: TheVaultColor.kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Gap(5),
                            const Icon(
                              Icons.check_circle,
                              color: TheVaultColor.kGreen,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal:',
                        style: AppTheme.kHeadingOne.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '\$4521',
                        style: AppTheme.kBigTitle.copyWith(
                          color: TheVaultColor.kSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee:',
                        style: AppTheme.kBodyTextTwo.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '\$11',
                        style: AppTheme.kBodyTextTwo.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: TheVaultColor.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount:',
                        style: AppTheme.kBodyTextTwo.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '25%',
                        style: AppTheme.kBodyTextTwo.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: TheVaultColor.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  const Divider(
                    thickness: 1,
                    height: 1,
                    color: TheVaultColor.kSecondaryColor,
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: AppTheme.kHeadingOne.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '\$${ref.watch(priceCalcProvider).floor()}',
                        style: AppTheme.kBigTitle.copyWith(
                          color: TheVaultColor.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
