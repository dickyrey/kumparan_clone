import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/article_detail_model.dart';
import 'package:kumparan_clone/src/data/models/article_detail_response.dart';
import 'package:kumparan_clone/src/data/models/article_model.dart';
import 'package:kumparan_clone/src/data/models/article_response.dart';
import 'package:kumparan_clone/src/data/models/comment_model.dart';
import 'package:kumparan_clone/src/data/models/comment_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ArticleDataSource {
  Future<List<ArticleModel>> getArticleList();
  Future<List<ArticleModel>> getMyArticleList(String status);
  Future<ArticleDetailModel> getArticleDetail(String id);
  Future<bool> checkLikeStatus(String id);
  Future<bool> likeArticle(String id);
  Future<List<CommentModel>> getCommentList(String id);
  Future<bool> sendComment({required String id, required String comment});
  Future<bool> deleteComment({required String id, required int userId});
  Future<bool> createArticle({
    required String title,
    required String content,
    required String originalContent,
    required File thumbnail,
    required List<String> categories,
  });
}

class ArticleDataSourceImpl extends ArticleDataSource {
  ArticleDataSourceImpl(this.client);
  final http.Client client;

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
      path: Const.articlePath + id + Const.likePath,
    );
    final response = await client.get(url, headers: header);

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
  Future<List<ArticleModel>> getMyArticleList(String status) async {
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
      queryParameters: {'status': status},
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
  Future<ArticleDetailModel> getArticleDetail(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };
    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath + id,
    );
    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return ArticleDetailResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).article;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<bool> likeArticle(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath + id + Const.likePath,
    );

    final response = await client.post(
      url,
      headers: header,
    );
    if (response.statusCode == 200) {
      return true;
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
      path: Const.articlePath + id + Const.commentPath,
    );

    final response = await client.get(url, headers: header);
    if (response.statusCode == 200) {
      return CommentResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).commentList;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<bool> sendComment({
    required String id,
    required String comment,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };
    final body = {
      'body': comment,
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.articlePath + id + Const.commentPath,
    );

    final response = await client.post(url, headers: header, body: body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<bool> deleteComment({
    required String id,
    required int userId,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: '${Const.articlePath}$id${Const.commentPath}/$userId',
    );

    final response = await client.delete(url, headers: header);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<bool> createArticle({
    required String title,
    required String content,
    required File thumbnail,
    required String originalContent,
    required List<String> categories,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: '/api/article',
    );

    final request = http.MultipartRequest(
      'POST',
      url,
    );
    request.fields['title'] = title;
    request.fields['content'] = content;
    request.fields['original_content'] = originalContent;

    request.fields['categories'] = categories
        .map((e) {
          return e;
        })
        .toList()
        .toString();

    final storeImage =
        await http.MultipartFile.fromPath('image', thumbnail.path);

    request.headers.addAll(header);
    request.files.add(storeImage);
    final response = await request.send();
    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
