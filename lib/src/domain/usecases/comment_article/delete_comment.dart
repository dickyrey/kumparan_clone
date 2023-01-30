import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/comment_article_repository.dart';

class DeleteComment {
  DeleteComment(this.repository);
  
  final CommentArticleRepository repository;

  Future<Either<Failure, void>> execute({required String id, required int userId}) {
    return repository.deleteComment(id: id,userId: userId);
  }
}
