import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_meat_vault/model/my_product_model.dart';
import 'package:the_meat_vault/repo/api_service.dart';

final userDataProvider = FutureProvider<List<UserProductModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
