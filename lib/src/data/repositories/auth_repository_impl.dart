import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/auth_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/verification_status.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.dataSource);

  final AuthDataSource dataSource;

  @override
  Future<Either<Failure, bool>> checkGoogleAuth() async {
    try {
      final result = await dataSource.checkGoogleAuth();
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
  Future<Either<Failure, void>> signInWithGoogle(String token) async {
    try {
      final result = await dataSource.signInWithGoogle(token);
      return Right(result);
    } on PlatformException catch (e) {
      return Left(throw ServerException(e.message ?? ''));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      final result = await dataSource.signOut();
      return Right(result);
    } catch (e) {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<String>>> getTimeZone() async {
    try {
      final result = await dataSource.getTimeZone();
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
  Future<Either<Failure, VerificationStatus>> checkUserVerification() async {
    try {
      final result = await dataSource.checkUserVerification();
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }
}
