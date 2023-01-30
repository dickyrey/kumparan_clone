part of 'user_article_banned_watcher_bloc.dart';

@freezed
class UserArticleBannedWatcherEvent with _$UserArticleBannedWatcherEvent {
  const factory UserArticleBannedWatcherEvent.fetchArticle() = _FetchArticle;
}
