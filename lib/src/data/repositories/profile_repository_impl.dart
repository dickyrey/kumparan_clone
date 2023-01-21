import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/profile_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';
import 'package:kumparan_clone/src/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this.dataSource);

  final ProfileDataSource dataSource;

  @override
  Future<Either<Failure, void>> changeProfile() {
    // TODO(dickyrey): implement changeProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getProfile() async {
    try {
      final result = await dataSource.getProfile();
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
