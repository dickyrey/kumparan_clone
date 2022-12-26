import 'package:equatable/equatable.dart';

class Article extends Equatable {
  const Article({
    required this.id,
    required this.title,
    required this.profilePicture,
    required this.creatorName,
    required this.thumbnail,
    required this.isVerified,
    required this.likes,
    required this.comments,
    required this.contentHtml,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String profilePicture;
  final String creatorName;
  final String thumbnail;
  final bool isVerified;
  final int likes;
  final int comments;
  final String contentHtml;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        title,
        profilePicture,
        creatorName,
        thumbnail,
        isVerified,
        likes,
        comments,
        contentHtml,
        createdAt,
      ];
}
