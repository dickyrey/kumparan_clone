import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:kumparan_clone/src/data/models/article_model.dart';
import 'package:kumparan_clone/src/data/models/article_response.dart';

// ignore: one_member_abstracts
abstract class ArticleRemoteDataSource {
  Future<List<ArticleModel>> getArticleList();
}

class ArticleRemoteDataSourceImpl extends ArticleRemoteDataSource {
  @override
  Future<List<ArticleModel>> getArticleList() async {
    // Load the JSON data from the mock_json/new_article.json file
    final jsonData =
        await root.rootBundle.loadString('mock_json/new_article.json');

    // Decode the JSON data and convert it to a ArticleResponse object
    final response = ArticleResponse.fromJson(
      json.decode(jsonData) as Map<String, dynamic>,
    );

    // Return the list of categories from the response
    return response.articleList;
  }
}
