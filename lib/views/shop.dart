import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../constants/constants.dart';
import '../controllers/cart_controller.dart';
import '../data/data_provider.dart';
import '../model/my_product_model.dart';
import '../widgets/live_product_card_widget.dart';
import 'cart.dart';
import 'details_page.dart';

class Shop extends ConsumerWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userDataProvider);

    final cartItem = ref.watch(itemBagProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: TheVaultColor.kSecondaryColor,
        title: const Text(
          'All Product',
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
            ),
            child: Badge(
              label: Text(
                cartItem.length.toString(),
              ),
              alignment: Alignment.topCenter,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.local_mall_rounded,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: data.when(
        data: (data) {
          List<UserProductModel> userList = data.map((e) => e).toList();
          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shop',
                          style: AppTheme.kHeadingOne.copyWith(
                            fontSize: 30,
                          ),
                        ),
                        const Gap(
                          10,
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: TheVaultColor.kSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    MasonryGridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: userList.length,
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                e: userList[index],
                              ),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 250,
                          child: LiveProductCardWidget(
                            userList: userList,
                            liveProductIndex: index,
                          ),

                          //   ProductCardWidget(productIndex: index),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        error: (err, s) => Text(
          err.toString(),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
