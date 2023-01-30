import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class GetArticleDetail {
  GetArticleDetail(this.repository);
  
  final ArticleRepository repository;

  Future<Either<Failure, ArticleDetail>> execute(String id) {
    return repository.getArticleDetail(id);
  }
}
