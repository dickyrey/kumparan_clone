part of 'new_article_watcher_bloc.dart';

@freezed
class NewArticleWatcherState with _$NewArticleWatcherState {
  const factory NewArticleWatcherState.initial() = _Initial;
  const factory NewArticleWatcherState.loading() = _Loading;
  const factory NewArticleWatcherState.error(String message) = _Error;
  const factory NewArticleWatcherState.loaded(List<Article> articleList) =
      _Loaded;
}
