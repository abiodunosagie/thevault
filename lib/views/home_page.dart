import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../constants/constants.dart';
import '../widgets/adsbanner_widget.dart';
import '../widgets/chip_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                const ProductCardWidget(),
                Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
    );
  }
}
