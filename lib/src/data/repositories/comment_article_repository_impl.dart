import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/comment_article_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/comment.dart';
import 'package:kumparan_clone/src/domain/repositories/comment_article_repository.dart';

class CommentArticleRepositoryImpl extends CommentArticleRepository {
  CommentArticleRepositoryImpl(this.dataSource);

  final CommentArticleDataSource dataSource;
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
}
