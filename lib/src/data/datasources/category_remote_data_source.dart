import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:kumparan_clone/src/data/models/category_model.dart';
import 'package:kumparan_clone/src/data/models/category_response.dart';

// ignore: one_member_abstracts
abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
}

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  @override
  Future<List<CategoryModel>> getCategories() async {
    // Load the JSON data from the mock_json/categories.json file
    final jsonData =
        await root.rootBundle.loadString('mock_json/categories.json');

    // Decode the JSON data and convert it to a CategoryResponse object
    final response = CategoryResponse.fromJson(
      json.decode(jsonData) as Map<String, dynamic>,
    );

    // Return the list of categories from the response
    return response.categoryList;
  }
}
