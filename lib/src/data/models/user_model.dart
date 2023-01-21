import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';

class UserModel extends Equatable {
  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.setPassword,
    required this.photo,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      emailVerifiedAt: DateTime.parse(json['email_verified_at'] as String),
      setPassword: json['set_password'] as String,
      photo: json['photo'] as String,
      type: json['type'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  final int id;
  final String name;
  final String email;
  final DateTime emailVerifiedAt;
  final String setPassword;
  final String photo;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;

  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      setPassword: setPassword,
      photo: photo,
      type: type,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'email_verified_at': emailVerifiedAt.toIso8601String(),
        'set_password': setPassword,
        'photo': photo,
        'type': type,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        emailVerifiedAt,
        setPassword,
        photo,
        type,
        createdAt,
        updatedAt,
      ];
}
