part of 'article_watcher_bloc.dart';

@freezed
class ArticleWatcherState with _$ArticleWatcherState {
  const factory ArticleWatcherState.initial() = _Initial;
  const factory ArticleWatcherState.loading() = _Loading;
  const factory ArticleWatcherState.error(String message) = _Error;
  const factory ArticleWatcherState.loaded(List<Article> articleList) =
      _Loaded;
}
