import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';

class ArticleDetailModel extends Equatable {
  const ArticleDetailModel({
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

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) {
    return ArticleDetailModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      thumbnail: json['thumbnail'] as String,
      categories: List<int>.from(
          (json['categories'] as Iterable<dynamic>).map((x) => x)),
      viewers: json['viewers'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final int id;
  final int userId;
  final String url;
  final String title;
  final String content;
  final String thumbnail;
  final List<int> categories;
  final int viewers;
  final DateTime createdAt;

  ArticleDetail toEntity() {
    return ArticleDetail(
      id: id,
      userId: userId,
      url: url,
      title: title,
      content: content,
      thumbnail: thumbnail,
      categories: categories,
      viewers: viewers,
      createdAt: createdAt,
    );
  }

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
