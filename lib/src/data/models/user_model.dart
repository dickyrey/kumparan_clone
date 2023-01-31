import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';

class UserModel extends Equatable {
  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.photo,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String,
    );
  }

  final int id;
  final String name;
  final String email;
  final String photo;

  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      photo: photo,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        photo,
      ];
}
