import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/like_article_repository.dart';

class LikeOrUnlikedArticle {
  LikeOrUnlikedArticle(this.repository);
  
  final LikeArticleRepository repository;

  Future<Either<Failure, void>> execute(String id) {
    return repository.likeOrUnlikedArticle(id);
  }
}
