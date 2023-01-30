part of 'user_article_rejected_watcher_bloc.dart';

@freezed
class UserArticleRejectedWatcherEvent with _$UserArticleRejectedWatcherEvent {
  const factory UserArticleRejectedWatcherEvent.fetchArticle() = _FetchArticle;
}
