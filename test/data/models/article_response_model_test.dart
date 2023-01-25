import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/article_model.dart';
import 'package:kumparan_clone/src/data/models/article_response.dart';

import '../../helpers/json_reader.dart';

void main() {
  final articleModel = ArticleModel(
    title: 'Pajero TNI Tertimpa Truk Pasir Nyalakan Sirine di Luar Jam Dinas',
    url:
        'https://interpretasi.id/api/article/pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63cede361ef2b',
    thumbnail:
        'https://asset.kompas.com/crops/L-YkSi6IQXxCguf_Dw_p6Ephqzc=/163x143:865x611/750x500/data/photo/2022/12/24/63a69928ea00d.png',
    viewers: 16,
    likes: 2,
    comments: 2,
    createdAt: DateTime.parse('2023-01-24 02:21:26'),
  );
  final articleModelResult = ArticleResponse(
    articleList: <ArticleModel>[articleModel],
  );

  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final jsonMap = json.decode(readJson('dummy_data/article_index.json'))
          as Map<String, dynamic>;
      // act
      final result = ArticleResponse.fromJson(jsonMap);
      // assert
      expect(result, articleModelResult);
    });
  });
}
