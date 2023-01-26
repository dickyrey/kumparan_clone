import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/user_comment_model.dart';
import 'package:kumparan_clone/src/domain/entities/user_comment.dart';

void main() {
  const userCommentModel = UserCommentModel(
    id: 1,
    name: 'Brimstone',
    photo: 'abc',
  );
  const userComment = UserComment(
    id: 1,
    name: 'Brimstone',
    photo: 'abc',
  );
  test('should be a subclass of UserComment Entity', () async {
    final result = userCommentModel.toEntity();
    expect(result, userComment);
  });
}
