import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';
import 'package:kumparan_clone/src/domain/repositories/comment_article_repository.dart';

class GetCommentList {
  GetCommentList(this.repository);
  
  final CommentArticleRepository repository;

  Future<Either<Failure, List<Comment>>> execute(String id) {
    return repository.getCommentList(id);
  }
}
