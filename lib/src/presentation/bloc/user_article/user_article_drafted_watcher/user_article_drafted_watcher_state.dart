part of 'user_article_drafted_watcher_bloc.dart';

@freezed
class UserArticleDraftedWatcherState with _$UserArticleDraftedWatcherState {
  const factory UserArticleDraftedWatcherState.initial() = _Initial;
  const factory UserArticleDraftedWatcherState.loading() = _Loading;
  const factory UserArticleDraftedWatcherState.error() = _Error;
  const factory UserArticleDraftedWatcherState.loaded(List<Article> article) = _Loaded;
}
