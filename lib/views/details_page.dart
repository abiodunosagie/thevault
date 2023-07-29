import 'package:flutter/material.dart';
import 'package:the_meat_vault/constants/constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kSecondaryColor,
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
          color: kWhiteColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.local_mall_rounded,
                size: 20,
              ),
              color: kWhiteColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: kLightBackground,
              child: Image.asset('assets/products/livechicken.png'),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: const Column(
                children: [
                  Text(
                    'Live Chicken',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
