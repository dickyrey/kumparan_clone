part of 'user_article_published_watcher_bloc.dart';

@freezed
class UserArticlePublishedWatcherState with _$UserArticlePublishedWatcherState {
  const factory UserArticlePublishedWatcherState.initial() = _Initial;
  const factory UserArticlePublishedWatcherState.loading() = _Loading;
  const factory UserArticlePublishedWatcherState.error() = _Error;
  const factory UserArticlePublishedWatcherState.loaded(List<Article> article) = _Loaded;
}
