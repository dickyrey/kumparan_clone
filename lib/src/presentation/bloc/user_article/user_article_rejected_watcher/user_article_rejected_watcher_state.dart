part of 'user_article_rejected_watcher_bloc.dart';

@freezed
class UserArticleRejectedWatcherState with _$UserArticleRejectedWatcherState {
  const factory UserArticleRejectedWatcherState.initial() = _Initial;
  const factory UserArticleRejectedWatcherState.loading() = _Loading;
  const factory UserArticleRejectedWatcherState.error() = _Error;
  const factory UserArticleRejectedWatcherState.loaded(List<Article> article) = _Loaded;
}
