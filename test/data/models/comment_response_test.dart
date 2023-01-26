import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/comment_model.dart';
import 'package:kumparan_clone/src/data/models/comment_response.dart';
import 'package:kumparan_clone/src/data/models/user_comment_model.dart';

import '../../helpers/json_reader.dart';

void main() {
  final commentModel = CommentModel(
    id: 1,
    body: 'Lorem',
    createdAt: DateTime.parse('2023-01-24 02:21:26'),
    user: const UserCommentModel(
      id: 1,
      name: 'Brimstone',
      photo: 'abc',
    ),
  );
  final commentModelResult = CommentResponse(
    commentList: <CommentModel>[commentModel],
  );
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final jsonMap = json.decode(
        readJson('dummy_data/article_comment_list.json'),
      ) as Map<String, dynamic>;
      // act
      final result = CommentResponse.fromJson(jsonMap);
      // assert
      expect(result, commentModelResult);
    });
  });
}
