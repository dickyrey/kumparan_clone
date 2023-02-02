import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/category_model.dart';
import 'package:kumparan_clone/src/data/models/category_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: one_member_abstracts
abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
}

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  @override
  Future<List<CategoryModel>> getCategories() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: '/api/article/',
      queryParameters: {'type': 'categories'},
    );

    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return CategoryResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).categoryList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
