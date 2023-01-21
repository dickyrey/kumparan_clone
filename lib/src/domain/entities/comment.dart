import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/user_comment.dart';

class Comment extends Equatable {
  const Comment({
    required this.id,
    required this.body,
    // required this.createdAt,
    required this.user,
  });

  final int id;
  final String body;
  // final DateTime createdAt;
  final UserComment user;

  Map<String, dynamic> toJson() => {
        'id': id,
        'body': body,
        // 'created_at': createdAt,
        'user': user.toJson(),
      };

  @override
  List<Object?> get props => [
        id,
        body,
        // createdAt,
        user,
      ];
}
