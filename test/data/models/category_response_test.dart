import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/category_model.dart';
import 'package:kumparan_clone/src/data/models/category_response.dart';
import 'package:kumparan_clone/src/data/models/comment_model.dart';
import 'package:kumparan_clone/src/data/models/comment_response.dart';
import 'package:kumparan_clone/src/data/models/user_comment_model.dart';

import '../../helpers/json_reader.dart';

void main() {
  const categoryModel = CategoryModel(
    id: 1,
    name: 'News',
  );
  const categoryModelResult = CategoryResponse(
    categoryList: <CategoryModel>[categoryModel],
  );
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final jsonMap = json.decode(
        readJson('dummy_data/category_list.json'),
      ) as Map<String, dynamic>;
      // act
      final result = CategoryResponse.fromJson(jsonMap);
      // assert
      expect(result, categoryModelResult);
    });
  });
}
