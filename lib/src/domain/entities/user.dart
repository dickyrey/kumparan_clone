import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.photo,
  });

  final int id;
  final String name;
  final String email;
  final String photo;

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        photo,
      ];
}
