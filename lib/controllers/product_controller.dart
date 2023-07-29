import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_meat_vault/data/product_list.dart';
import 'package:the_meat_vault/model/product_model.dart';

class ProductNotifier extends StateNotifier<List<ProductModel>> {
  ProductNotifier() : super(productItems);
}

final productNotifierProvider =
    StateNotifierProvider<ProductNotifier, List<ProductModel>>((ref) {
  return ProductNotifier();
});
