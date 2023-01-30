import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getArticleList();
  Future<Either<Failure, List<Article>>> getMyArticleList(String status);
  Future<Either<Failure, ArticleDetail>> getArticleDetail(String id);
  Future<Either<Failure, bool>> checkLikeStatus(String id);
  Future<Either<Failure, bool>> likeArticle(String id);
  Future<Either<Failure, List<Comment>>> getCommentList(String id);
  Future<Either<Failure, bool>> sendComment({required String id, required String comment});
  Future<Either<Failure, bool>> deleteComment({required String id, required int userId});
  Future<Either<Failure, bool>> createArticle({
    required String title,
    required String content,
    required String originalContent,
    required File thumbnail,
    required List<String> categories,
  });
}
