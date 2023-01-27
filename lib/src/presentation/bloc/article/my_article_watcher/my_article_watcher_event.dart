part of 'my_article_watcher_bloc.dart';

@freezed
class MyArticleWatcherEvent with _$MyArticleWatcherEvent {
  const factory MyArticleWatcherEvent.fetchArticle() = _FetchArticle;
}
