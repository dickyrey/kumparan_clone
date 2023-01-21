import 'package:equatable/equatable.dart';

class ArticleDetail extends Equatable {
  const ArticleDetail({
    required this.id,
    required this.userId,
    required this.url,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.categories,
    required this.viewers,
    required this.createdAt,
  });

  final int id;
  final int userId;
  final String url;
  final String title;
  final String content;
  final String thumbnail;
  final List<int> categories;
  final int viewers;
  final DateTime createdAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'url': url,
        'title': title,
        'content': content,
        'thumbnail': thumbnail,
        'categories': List<dynamic>.from(categories.map((x) => x)),
        'viewers': viewers,
        'created_at': createdAt.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        userId,
        url,
        title,
        content,
        thumbnail,
        categories,
        viewers,
        createdAt,
      ];
}
