part of 'article_detail_watcher_bloc.dart';

@freezed
class ArticleDetailWatcherState with _$ArticleDetailWatcherState {
  const factory ArticleDetailWatcherState.initial() = _Initial;
  const factory ArticleDetailWatcherState.loading() = _Loading;
  const factory ArticleDetailWatcherState.error(String message) = _Error;
  const factory ArticleDetailWatcherState.loaded(ArticleDetail articleDetail) = _Loaded;
}
