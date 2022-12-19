import 'package:equatable/equatable.dart';

class Article extends Equatable {
  const Article({
    required this.id,
    required this.title,
    required this.profilePicture,
    required this.creatorName,
    required this.thumbnail,
    required this.isVerified,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String profilePicture;
  final String creatorName;
  final String thumbnail;
  final bool isVerified;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        title,
        profilePicture,
        creatorName,
        thumbnail,
        isVerified,
        createdAt,
      ];
}
