import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/article_model.dart';
import 'package:kumparan_clone/src/data/models/article_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserArticleDataSource {
  Future<List<ArticleModel>> getMyBannedArticle();
  Future<List<ArticleModel>> getMyDraftedArticle();
  Future<List<ArticleModel>> getMyModeratedArticle();
  Future<List<ArticleModel>> getMyPublishedArticle();
  Future<List<ArticleModel>> getMyRejectedArticle();
  Future<bool> changeToModerated(String id);
}

class UserArticleDataSourceImpl extends UserArticleDataSource {
  UserArticleDataSourceImpl(this.client);
  final http.Client client;

  @override
  Future<List<ArticleModel>> getMyBannedArticle() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.myArticlePath,
      queryParameters: {'status': 'banned'},
    );

    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).articleList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<List<ArticleModel>> getMyDraftedArticle() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.myArticlePath,
      queryParameters: {'status': 'drafted'},
    );

    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).articleList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<List<ArticleModel>> getMyModeratedArticle() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.myArticlePath,
      queryParameters: {'status': 'moderated'},
    );

    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).articleList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<List<ArticleModel>> getMyPublishedArticle() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.myArticlePath,
      queryParameters: {'status': 'published'},
    );

    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).articleList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<List<ArticleModel>> getMyRejectedArticle() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.myArticlePath,
      queryParameters: {'status': 'rejected'},
    );

    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).articleList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
  
  @override
  Future<bool> changeToModerated(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: '/api/article/$id',
      queryParameters: {'status': 'moderated'},
    );

    final response = await client.put(url, headers: header);
    print(response.body);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
