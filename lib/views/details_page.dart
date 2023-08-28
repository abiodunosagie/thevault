import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/controllers/product_controller.dart';
import 'package:the_meat_vault/model/my_product_model.dart';
import 'package:the_meat_vault/views/home_page.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key, required this.e});

  final UserProductModel e;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: TheVaultColor.kS0,
        title: const Text(
          'Details Page',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          color: TheVaultColor.kWhite,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(
                20,
              ),
              height: 300,
              width: double.infinity,
              color: TheVaultColor.kWhite,
              child: Image.network(e.image),
            ),
            const Gap(
              10,
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: AppTheme.kHeading.copyWith(
                      color: TheVaultColor.kS0,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      RatingBar(
                        itemSize: 20,
                        initialRating: e.rating,
                        minRating: 1,
                        maxRating: 5,
                        allowHalfRating: true,
                        ratingWidget: RatingWidget(
                          empty: const Icon(
                            Icons.star_border,
                            color: Colors.amber,
                          ),
                          full: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          half: const Icon(
                            Icons.star_half_sharp,
                            color: Colors.amber,
                          ),
                        ),
                        onRatingUpdate: (value) {},
                      ),
                      const Gap(5),
                      Text(
                        ' ${e.ratingInfo['count'].toString()} ratings',
                        style: AppTheme.kBody.copyWith(
                          color: TheVaultColor.kS3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Gap(8),
                  Text(e.description),
                  const Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${e.price}',
                        style: AppTheme.kHeading.copyWith(
                          color: TheVaultColor.kS0,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              ref
                                  .read(productNotifierProvider.notifier)
                                  .decreaseQty(e.id);
                            },
                            icon: const Icon(
                              Icons.do_not_disturb_on_outlined,
                            ),
                          ),
                          Text(
                            '10',
                            style: AppTheme.kHeading.copyWith(
                              color: TheVaultColor.kS0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              ref
                                  .read(productNotifierProvider.notifier)
                                  .incrementQty(e.id);
                            },
                            icon: const Icon(
                              Icons.add_circle_outline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TheVaultColor.kP0,
                      minimumSize: const Size(
                        double.infinity,
                        60,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Add item to bag',
                      style: AppTheme.kBody.copyWith(
                        // color: TheVaultColor.kS0,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) =>
            ref.read(currentIndexProvider.notifier).update((state) => value),
        selectedItemColor: TheVaultColor.kS0,
        unselectedItemColor: TheVaultColor.kS0,
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
