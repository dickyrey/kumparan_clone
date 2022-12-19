part of 'new_article_watcher_bloc.dart';

@freezed
class NewArticleWatcherEvent with _$NewArticleWatcherEvent {
  const factory NewArticleWatcherEvent.fetchNewArticle() = _FetchNewArticle;
}
