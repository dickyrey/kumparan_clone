import 'package:equatable/equatable.dart';

class User extends Equatable{
  const User({
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

  final int id;
  final String name;
  final String email;
  final DateTime emailVerifiedAt;
  final String setPassword;
  final String photo;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;

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
