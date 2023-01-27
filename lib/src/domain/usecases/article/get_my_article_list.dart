import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class GetMyArticleList {

  GetMyArticleList(this.repository);
  
  final ArticleRepository repository;

  Future<Either<Failure, List<Article>>> execute() {
    return repository.getMyArticleList();
  }
}
