import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../constants/constants.dart';
import '../controllers/product_controller.dart';
import '../widgets/adsbanner_widget.dart';
import '../widgets/chip_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/product_widget.dart';

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
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: Image.asset(
          'assets/logo/logoone.png',
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
                      ChipWidget(chipLabel: 'Beef'),
                      ChipWidget(
                        chipLabel: 'Chicken',
                      ),
                      ChipWidget(
                        chipLabel: 'Pork',
                      ),
                      ChipWidget(
                        chipLabel: 'Lamb',
                      ),
                      ChipWidget(
                        chipLabel: 'Fish',
                      ),
                      ChipWidget(
                        chipLabel: 'Turkey',
                      ),
                      ChipWidget(chipLabel: 'Duck'),
                      ChipWidget(
                        chipLabel: 'Venison (Deer meat)',
                      ),
                      ChipWidget(
                        chipLabel: 'Bison',
                      ),
                      ChipWidget(
                        chipLabel: 'Goat',
                      ),
                    ],
                  ),
                ),
                //Hot sales section
                const Gap(
                  12,
                ),
                const Row(
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
                    itemBuilder: (context, index) =>
                        ProductCardWidget(productIndex: index),
                  ),
                ),
                const Gap(20),

                const ProductCardWidget(),
                Gap(20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(

                      'Featured Sales',

                      'Featured Products',

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
                  itemBuilder: (context, index) => SizedBox(
                    height: 250,
                    child: ProductCardWidget(productIndex: index),
                  ),
                ),

                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) => const SizedBox(
                          height: 250,
                          child: ProductWidget(),
                        ))

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) =>
            ref.read(currentIndexProvider.notifier).update((state) => value),
        selectedItemColor: kSecondaryColor,
        unselectedItemColor: kSecondaryThree,
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
