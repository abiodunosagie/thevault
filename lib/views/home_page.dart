import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/views/details_page.dart';

import '../constants/constants.dart';
import '../controllers/product_controller.dart';
import '../model/app_image.dart';
import '../widgets/adsbanner_widget.dart';
import '../widgets/chip_widget.dart';
import '../widgets/product_card_widget.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TheVaultColor.kSecondaryColor,
        centerTitle: true,
        title: Image.asset(
          AppImage.logo,
          width: 80,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.local_mall_rounded,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //Ads banner section
                const AdsBannerWidget(),
                //Chip section
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
                //Hot sales section
                const Gap(
                  12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Sales',
                      style: AppTheme.kHeadingOne,
                    ),
                    Text(
                      'Sell all',
                      style: AppTheme.kSeeAllText,
                    ),
                  ],
                ),
                //Featured products
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  //color: Colors.amber,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5),
                    itemCount: product.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPage(getIndex: index),
                            ),
                          );
                        },
                        child: ProductCardWidget(productIndex: index)),
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured Sales',
                      style: AppTheme.kHeadingOne,
                    ),
                    Text(
                      'Sell all',
                      style: AppTheme.kSeeAllText,
                    ),
                  ],
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) =>
            ref.read(currentIndexProvider.notifier).update((state) => value),
        selectedItemColor: TheVaultColor.kSecondaryColor,
        unselectedItemColor: TheVaultColor.kSecondaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_rounded,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.favorite_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_outlined,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.place,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.notifications,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
