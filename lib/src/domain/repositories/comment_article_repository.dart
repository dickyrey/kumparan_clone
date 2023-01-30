import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';

abstract class CommentArticleRepository {
  Future<Either<Failure, List<Comment>>> getCommentList(String id);
  Future<Either<Failure, bool>> sendComment({
    required String id,
    required String comment,
  });
  Future<Either<Failure, bool>> deleteComment({
    required String id,
    required int userId,
  });
}
