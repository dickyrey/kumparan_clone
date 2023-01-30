part of 'user_article_moderated_watcher_bloc.dart';

@freezed
class UserArticleModeratedWatcherEvent with _$UserArticleModeratedWatcherEvent {
  const factory UserArticleModeratedWatcherEvent.fetchArticle() = _FetchArticle;
}
