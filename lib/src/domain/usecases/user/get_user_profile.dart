import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';
import 'package:kumparan_clone/src/domain/repositories/user_repository.dart';

class GetUserProfile {
  GetUserProfile(this.repository);
  
  final UserRepository repository;

  Future<Either<Failure, User>> execute() {
    return repository.getProfile();
  }
}
