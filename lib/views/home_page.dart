import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/controllers/cart_controller.dart';
import 'package:the_meat_vault/data/data_provider.dart';
import 'package:the_meat_vault/model/my_product_model.dart';
import 'package:the_meat_vault/views/cart.dart';
import 'package:the_meat_vault/views/shop.dart';

import '../constants/constants.dart';
import '../model/app_image.dart';
import '../widgets/adsbanner_widget.dart';
import '../widgets/chip_widget.dart';
import '../widgets/live_product_card_widget.dart';
import 'details_page.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userDataProvider);

    final currentIndex = ref.watch(currentIndexProvider);
    final cartItem = ref.watch(itemBagProvider);
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
                  children: [
                    //Ads banner section
                    AdsBannerWidget(
                      userList: userList,
                      liveProductIndex: 0,
                    ),
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
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Shop(),
                              ),
                            );
                          },
                          child: Text(
                            'See All',
                            style: AppTheme.kSeeAllText,
                          ),
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
                        itemCount: userList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
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
                          child: LiveProductCardWidget(
                            userList: userList,
                            liveProductIndex: index,
                          ),

                          // ProductCardWidget(
                          //   productIndex: index,
                          // ),
                        ),
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
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Shop(),
                              ),
                            );
                          },
                          child: Text(
                            'See All',
                            style: AppTheme.kSeeAllText,
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
//bottom navigation bar
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
