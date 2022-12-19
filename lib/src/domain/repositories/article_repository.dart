import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';

// ignore: one_member_abstracts
abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getArticleList();
}
