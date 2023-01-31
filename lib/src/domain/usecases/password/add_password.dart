import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/password_repository.dart';

class AddPassword {
  AddPassword(this.repository);
  
  final PasswordRepository repository;

  Future<Either<Failure, bool>> execute(String password) {
    return repository.addPassword(password);
  }
}
