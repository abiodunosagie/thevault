import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/constants.dart';
import '../model/my_product_model.dart';

class LiveProductCardWidget extends StatelessWidget {
  const LiveProductCardWidget({
    super.key,
    required this.userList,
    required this.liveProductIndex,
  });
  final int liveProductIndex;
  final List<UserProductModel> userList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color for the box
        color: TheVaultColor.kWhite,
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
              color: TheVaultColor.kWhite,
              child: Image.network(
                userList[liveProductIndex].image,
                fit: BoxFit.contain,
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
                  userList[liveProductIndex].title,
                  style: AppTheme.kHeading.copyWith(
                    color: TheVaultColor.kS3,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  userList[liveProductIndex].description,
                  style: AppTheme.kBody.copyWith(
                    color: TheVaultColor.kS3,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        '\$ ${userList[liveProductIndex].price}',
                        style: AppTheme.kHeading.copyWith(
                          color: TheVaultColor.kS2,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {
                    //     ref.read(productNotifierProvider.notifier).isSelectItem(
                    //         userList[index].id,index );
                    //
                    //     if () {
                    //       ref.read(itemBagProvider.notifier).addNewItemBag(
                    //         UserProductModel(id:  userList[index].id, title:  userList[index].title, price:  userList[index].price, description:  userList[index].description, image:  userList[index].image, rating:  userList[index].rating,
                    //
                    //         ) as ProductModel,
                    //       );
                    //     } else {
                    //       ref
                    //           .read(itemBagProvider.notifier)
                    //           .removeItem(userList[index].id);
                    //     }
                    //   },
                    //
                    // ),
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
