import 'package:kumparan_clone/src/domain/entities/user_comment.dart';

class UserCommentModel {
  UserCommentModel({
    required this.id,
    required this.name,
    required this.photo,
  });

  factory UserCommentModel.fromJson(Map<String, dynamic> json) {
    return UserCommentModel(
      id: json['id'] as int,
      name: json['name'] as String,
      photo: json['photo'] as String,
    );
  }

  final int id;
  final String name;
  final String photo;

  UserComment toEntity() {
    return UserComment(
      id: id,
      name: name,
      photo: photo,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'photo': photo,
      };
}
