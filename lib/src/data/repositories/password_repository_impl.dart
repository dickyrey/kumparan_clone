import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/password_data_source.dart';
import 'package:kumparan_clone/src/domain/repositories/password_repository.dart';

class PasswordRepositoryImpl extends PasswordRepository {
  PasswordRepositoryImpl(this.dataSource);

  final PasswordDataSource dataSource;
  @override
  Future<Either<Failure, bool>> addPassword(String password) async {
    try {
      final result = await dataSource.addPassword(password);
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
  Future<Either<Failure, bool>> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      final result = await dataSource.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
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
