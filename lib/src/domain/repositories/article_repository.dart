import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getArticleList();
  Future<Either<Failure, ArticleDetail>> getArticleDetail(String url);
  Future<Either<Failure, bool>> checkLikeStatus(String id);
  Future<Either<Failure, void>> likeArticle(String id);
}
