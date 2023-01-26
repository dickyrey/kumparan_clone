import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/datasources/article_data_source.dart';
import 'package:kumparan_clone/src/data/models/article_detail_response.dart';
import 'package:kumparan_clone/src/data/models/article_response.dart';
import 'package:kumparan_clone/src/data/models/comment_response.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late ArticleDataSourceImpl dataSource;
  late MockHttpClient httpClient;

  setUp(() {
    httpClient = MockHttpClient();
    dataSource = ArticleDataSourceImpl(httpClient);
  });

  // init
  const userId = 5;
  const articleCheckLikeStatusJson = 'dummy_data/article_check_like_status.json';
  const articleCommentListJson = 'dummy_data/article_comment_list.json';
  const articleIndexJson = 'dummy_data/article_index.json';
  const articleDetailJson = 'dummy_data/article_detail.json';
  const articleLikeJson = 'dummy_data/article_like.json';
  const articleSendCommentJson = 'dummy_data/article_send_comment.json';

  const id =
      'pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63d16893cd9f7';
  const link =
      'https://interpretasi.id/api/article/pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63d16893cd9f7';

  group('Get All Article', () {
    final tArticleList = ArticleResponse.fromJson(
      json.decode(readJson(articleIndexJson)) as Map<String, dynamic>,
    ).articleList;

    test('return List of Article when 200', () async {
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
      // arrange
      when(httpClient.get(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          readJson(articleIndexJson),
          200,
        ),
      );
      // act
      final result = await dataSource.getArticleList();
      // assert
      expect(result, equals(tArticleList));
    });

    test('throw ServerException when is not 200', () async {
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
      // arrange
      when(httpClient.get(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.getArticleList();
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('Get Article Detail', () {
    final tArticleDetail = ArticleDetailResponse.fromJson(
      json.decode(readJson(articleDetailJson)) as Map<String, dynamic>,
    ).article;

    test('return Article Detail when is 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };

      final uri = Uri.parse(link);
      // arrange
      when(httpClient.get(uri, headers: header)).thenAnswer(
        (_) async => http.Response(
          readJson(articleDetailJson),
          200,
        ),
      );
      // act
      final result = await dataSource.getArticleDetail(link);
      // assert
      expect(result, equals(tArticleDetail));
    });

    test('throw ServerException is not 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };
      final uri = Uri.parse(link);
      // arrange
      when(httpClient.get(uri, headers: header)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.getArticleDetail(link);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('Check Like Status', () {
    test('Return true if 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };
      final url = Uri(
        scheme: Const.scheme,
        host: Const.host,
        path: Const.articlePath + id + Const.likePath,
      ); // arrange
      when(httpClient.get(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          readJson(articleCheckLikeStatusJson),
          200,
        ),
      );
      // act
      final result = await dataSource.checkLikeStatus(id);
      // assert
      expect(result, equals(false));
    });

    test('throw ServerException is not 200', () async {
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
      // arrange
      when(httpClient.get(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.checkLikeStatus(id);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('Like Article', () {
    test('Return true if 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };
      final url = Uri(
        scheme: Const.scheme,
        host: Const.host,
        path: Const.articlePath + id + Const.likePath,
      ); // arrange
      when(httpClient.post(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          readJson(articleLikeJson),
          200,
        ),
      );
      // act
      final result = await dataSource.likeArticle(id);
      // assert
      expect(result, equals(true));
    });

    test('throw ServerException is not 200', () async {
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
      // arrange
      when(httpClient.post(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.likeArticle(id);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });
  group('Get Comment List', () {
    final tCommentList = CommentResponse.fromJson(
      json.decode(readJson(articleCommentListJson)) as Map<String, dynamic>,
    ).commentList;
    test('Return List of Comment if 200', () async {
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
      ); //arrange
      when(httpClient.get(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          readJson(articleCommentListJson),
          200,
        ),
      );
      // act
      final result = await dataSource.getCommentList(id);
      // assert
      expect(result, equals(tCommentList));
    });

    test('throw ServerException is not 200', () async {
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
      // arrange
      when(httpClient.get(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.getCommentList(id);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });
  group('Send Comment', () {
    test('Return true if 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };
      final body = {
        'body': 'lorem ipsum',
      };
      final url = Uri(
        scheme: Const.scheme,
        host: Const.host,
        path: Const.articlePath + id + Const.commentPath,
      ); //arrange
      when(httpClient.post(url, headers: header, body: body)).thenAnswer(
        (_) async => http.Response(
          readJson(articleSendCommentJson),
          200,
        ),
      );
      // act
      final result =
          await dataSource.sendComment(id: id, comment: 'lorem ipsum');
      // assert
      expect(result, equals(true));
    });

    test('throw ServerException is not 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };
      final body = {
        'body': 'lorem ipsum',
      };
      final url = Uri(
        scheme: Const.scheme,
        host: Const.host,
        path: Const.articlePath + id + Const.commentPath,
      );
      // arrange
      when(httpClient.post(url, headers: header, body: body)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.sendComment(id: id, comment: 'lorem ipsum');
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });
  group('Delete Comment', () {
    test('Return true if 200', () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(Const.token);
      final header = {
        'Authorization': 'Bearer $token',
      };
      final url = Uri(
        scheme: Const.scheme,
        host: Const.host,
        path: '${Const.articlePath}$id${Const.commentPath}/$userId',
      ); //arrange
      when(httpClient.delete(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          readJson(articleSendCommentJson),
          200,
        ),
      );
      // act
      final result = await dataSource.deleteComment(id: id, userId: userId);
      // assert
      expect(result, equals(true));
    });

    test('throw ServerException is not 200', () async {
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
      // arrange
      when(httpClient.delete(url, headers: header)).thenAnswer(
        (_) async => http.Response(
          ExceptionMessage.internetNotConnected,
          404,
        ),
      );
      // act
      final call = dataSource.deleteComment(id: id, userId: userId);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });
}
