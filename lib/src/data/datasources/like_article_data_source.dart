import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LikeArticleDataSource {
  Future<bool> checkStatus(String id);
  Future<bool> likeOrUnlikedArticle(String id);
}

class LikeArticleDataSourceImpl extends LikeArticleDataSource {
  LikeArticleDataSourceImpl(this.client);
  final http.Client client;

  @override
  Future<bool> checkStatus(String id) async {
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
  Future<bool> likeOrUnlikedArticle(String id) async {
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
}
