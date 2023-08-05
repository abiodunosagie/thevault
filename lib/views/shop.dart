import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../constants/constants.dart';
import '../controllers/cart_controller.dart';
import '../controllers/product_controller.dart';
import '../data/product_list.dart';
import '../widgets/chip_widget.dart';
import '../widgets/product_card_widget.dart';
import 'cart.dart';
import 'details_page.dart';
import 'home_page.dart';

class Shop extends ConsumerWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    final cartItem = ref.watch(itemBagProvider);

    // Create a list of image asset paths from the product data
    final List<String> imageAssetPaths =
        productItems.map((item) => item.imgUrl).toList();

    // Convert the image asset paths to AssetImage widgets
    final List<Image> images =
        imageAssetPaths.map((assetPath) => Image.asset(assetPath)).toList();

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // const AdsBannerWidget(),
                CarouselSlider(
                  items: images,
                  options: CarouselOptions(
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    animateToClosest: true,
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: const [
                      ChipWidget(chipLabel: 'iPhone'),
                      ChipWidget(
                        chipLabel: 'Samsung Galaxy',
                      ),
                      ChipWidget(
                        chipLabel: 'Google Pixel',
                      ),
                      ChipWidget(
                        chipLabel: 'AirPod Max',
                      ),
                      ChipWidget(
                        chipLabel: 'OnePlus',
                      ),
                      ChipWidget(
                        chipLabel: 'Dell',
                      ),
                      ChipWidget(chipLabel: 'Lenovo'),
                      ChipWidget(
                        chipLabel: 'Alien Ware',
                      ),
                      ChipWidget(
                        chipLabel: 'MSI',
                      ),
                      ChipWidget(
                        chipLabel: 'AirPod Pro',
                      ),
                      ChipWidget(
                        chipLabel: 'Samsung Bud',
                      ),
                      ChipWidget(
                        chipLabel: 'Chrome Book',
                      ),
                      ChipWidget(
                        chipLabel: 'Ultra Book',
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: product.length,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(getIndex: index),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 250,
                      child: ProductCardWidget(productIndex: index),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
