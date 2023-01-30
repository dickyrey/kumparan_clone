import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';

abstract class UserArticleRepository {
  Future<Either<Failure, List<Article>>> getMyBannedArticle();
  Future<Either<Failure, List<Article>>> getMyDraftedArticle();
  Future<Either<Failure, List<Article>>> getMyModeratedArticle();
  Future<Either<Failure, List<Article>>> getMyPublishedArticle();
  Future<Either<Failure, List<Article>>> getMyRejectedArticle();
}
