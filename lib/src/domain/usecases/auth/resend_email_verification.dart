import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';

class ResendEmailVerification {
  ResendEmailVerification(this.repository);

  final AuthRepository repository;

  Future<Either<Failure, bool>> execute() {
    return repository.resendEmailVerification();
  }
}
