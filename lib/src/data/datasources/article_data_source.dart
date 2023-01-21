import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/article_detail_model.dart';
import 'package:kumparan_clone/src/data/models/article_detail_response.dart';
import 'package:kumparan_clone/src/data/models/article_model.dart';
import 'package:kumparan_clone/src/data/models/article_response.dart';
import 'package:kumparan_clone/src/data/models/comment_model.dart';
import 'package:kumparan_clone/src/data/models/comment_response.dart';
import 'package:kumparan_clone/src/data/models/user_comment_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ArticleDataSource {
  Future<List<ArticleModel>> getArticleList();
  Future<ArticleDetailModel> getArticleDetail(String url);
  Future<bool> checkLikeStatus(String id);
  Future<void> likeArticle(String id);
  Future<List<CommentModel>> getCommentList(String id);
}

class ArticleDataSourceImpl extends ArticleDataSource {
  @override
  Future<bool> checkLikeStatus(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath + id,
      queryParameters: {'type': 'like'},
    );
    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      // ignore: avoid_dynamic_calls
      final result = json.decode(response.body)['data'];
      if (result == true) {
        return true;
      } else {
        return false;
      }
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<List<ArticleModel>> getArticleList() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath,
    );

    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).articleList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<ArticleDetailModel> getArticleDetail(String url) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final uri = Uri.parse(url);
    final response = await http.get(uri, headers: header);
    if (response.statusCode == 200) {
      return ArticleDetailResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).article;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<void> likeArticle(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath + id,
      queryParameters: {'type': 'like'},
    );

    final response = await http.put(
      url,
      headers: header,
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
  
  @override
  Future<List<CommentModel>> getCommentList(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath + id,
      queryParameters: {'type': 'comments'},
    );

    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return CommentResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).commentList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
