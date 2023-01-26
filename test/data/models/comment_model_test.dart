import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/comment_model.dart';
import 'package:kumparan_clone/src/data/models/user_comment_model.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';
import 'package:kumparan_clone/src/domain/entities/user_comment.dart';

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
  final comment = Comment(
    id: 1,
    body: 'Lorem',
    createdAt: DateTime.parse('2023-01-24 02:21:26'),
    user: const UserComment(
      id: 1,
      name: 'Brimstone',
      photo: 'abc',
    ),
  );
  test('should be a subclass of Comment Entity', () async {
    final result = commentModel.toEntity();
    expect(result, comment);
  });
}
