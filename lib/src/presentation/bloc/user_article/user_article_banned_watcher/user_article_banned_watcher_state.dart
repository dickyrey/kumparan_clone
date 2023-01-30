part of 'user_article_banned_watcher_bloc.dart';

@freezed
class UserArticleBannedWatcherState with _$UserArticleBannedWatcherState {
  const factory UserArticleBannedWatcherState.initial() = _Initial;
  const factory UserArticleBannedWatcherState.loading() = _Loading;
  const factory UserArticleBannedWatcherState.error() = _Error;
  const factory UserArticleBannedWatcherState.loaded(List<Article> article) = _Loaded;
}
