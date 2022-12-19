import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class GetArticleList {
  final ArticleRepository repository;

  GetArticleList(this.repository);

  Future<Either<Failure, List<Article>>> execute() {
    return repository.getArticleList();
  }
}
