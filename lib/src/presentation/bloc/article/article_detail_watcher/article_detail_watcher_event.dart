part of 'article_detail_watcher_bloc.dart';

@freezed
class ArticleDetailWatcherEvent with _$ArticleDetailWatcherEvent {
  const factory ArticleDetailWatcherEvent.fetchArticleDetail(String url) = _FetchArticleDetail;
}
