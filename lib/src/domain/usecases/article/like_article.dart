import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class LikeArticle {
  LikeArticle(this.repository);
  
  final ArticleRepository repository;

  Future<Either<Failure, void>> execute(String id) {
    return repository.likeArticle(id);
  }
}
