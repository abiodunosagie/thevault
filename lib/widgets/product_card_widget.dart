import 'package:flutter/material.dart';
import 'package:the_meat_vault/widgets/product_widget.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      //color: Colors.amber,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ProductWidget(),
      ),
    );
  }
}
