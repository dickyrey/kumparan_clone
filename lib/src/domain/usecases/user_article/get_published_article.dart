import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/repositories/user_article_repository.dart';

class GetPublishedArticle {
  GetPublishedArticle(this.repository);

  final UserArticleRepository repository;

  Future<Either<Failure, List<Article>>> execute() {
    return repository.getMyPublishedArticle();
  }
}
