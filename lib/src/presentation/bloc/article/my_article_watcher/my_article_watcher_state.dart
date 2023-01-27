part of 'my_article_watcher_bloc.dart';

@freezed
class MyArticleWatcherState with _$MyArticleWatcherState {
  const factory MyArticleWatcherState.initial() = _Initial;
  const factory MyArticleWatcherState.loading() = _Loading;
  const factory MyArticleWatcherState.error(String message) = _Error;
  const factory MyArticleWatcherState.loaded(List<Article> articleList) = _Loaded;
}
