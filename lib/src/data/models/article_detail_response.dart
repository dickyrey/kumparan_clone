import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/article_detail_model.dart';

class ArticleDetailResponse extends Equatable {
  const ArticleDetailResponse({
    required this.article,
  });

  factory ArticleDetailResponse.fromJson(Map<String, dynamic> json) {
    return ArticleDetailResponse(
      article: ArticleDetailModel.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );
  }

  final ArticleDetailModel article;

  @override
  List<Object?> get props => [article];
}
