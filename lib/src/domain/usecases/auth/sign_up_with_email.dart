import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';

class SignUpWithEmail {
  SignUpWithEmail(this.repository);
  
  final AuthRepository repository;

  Future<Either<Failure, void>> execute(String email) {
    return repository.signUpWithEmail(email);
  }
}
