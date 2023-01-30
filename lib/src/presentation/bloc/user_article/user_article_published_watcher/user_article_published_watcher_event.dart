part of 'user_article_published_watcher_bloc.dart';

@freezed
class UserArticlePublishedWatcherEvent with _$UserArticlePublishedWatcherEvent {
  const factory UserArticlePublishedWatcherEvent.fetchArticle() = _FetchArticle;
}
