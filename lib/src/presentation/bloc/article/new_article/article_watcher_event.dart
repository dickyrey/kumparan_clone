part of 'article_watcher_bloc.dart';

@freezed
class ArticleWatcherEvent with _$ArticleWatcherEvent {
  const factory ArticleWatcherEvent.fetchArticle() = _FetchArticle;
}
