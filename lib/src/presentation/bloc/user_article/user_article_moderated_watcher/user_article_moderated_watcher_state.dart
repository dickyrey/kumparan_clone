part of 'user_article_moderated_watcher_bloc.dart';

@freezed
class UserArticleModeratedWatcherState with _$UserArticleModeratedWatcherState {
  const factory UserArticleModeratedWatcherState.initial() = _Initial;
  const factory UserArticleModeratedWatcherState.loading() = _Loading;
  const factory UserArticleModeratedWatcherState.error() = _Error;
  const factory UserArticleModeratedWatcherState.loaded(List<Article> article) = _Loaded;
}
