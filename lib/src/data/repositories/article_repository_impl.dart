import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/article_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  ArticleRepositoryImpl({required this.dataSource});

  final ArticleDataSource dataSource;

  @override
  Future<Either<Failure, bool>> checkLikeStatus(String id) async {
    try {
      final result = await dataSource.checkLikeStatus(id);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Article>>> getArticleList() async {
    try {
      final result = await dataSource.getArticleList();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Article>>> getMyArticleList(String status) async {
    try {
      final result = await dataSource.getMyArticleList(status);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, ArticleDetail>> getArticleDetail(String id) async {
    try {
      final result = await dataSource.getArticleDetail(id);
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> likeArticle(String id) async {
    try {
      final result = await dataSource.likeArticle(id);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Comment>>> getCommentList(String id) async {
    try {
      final result = await dataSource.getCommentList(id);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> sendComment({
    required String id,
    required String comment,
  }) async {
    try {
      final result = await dataSource.sendComment(id: id, comment: comment);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> deleteComment({
    required String id,
    required int userId,
  }) async {
    try {
      final result = await dataSource.deleteComment(id: id, userId: userId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> createArticle({
    required String title,
    required String content,
    required File thumbnail,
    required String originalContent,
    required List<String> categories,
  }) async {
    try {
      final result = await dataSource.createArticle(
        title: title,
        content: content,
        thumbnail: thumbnail,
        originalContent: originalContent,
        categories: categories,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }
}
