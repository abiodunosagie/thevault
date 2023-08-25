import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:the_meat_vault/model/my_product_model.dart';

class ApiServices {
  String endpoint = 'https://fakestoreapi.com/products';
  Future<List<UserProductModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => UserProductModel.fromjson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

//a provider object or riverPod shared state
final userProvider = Provider<ApiServices>((ref) => ApiServices());
