part of 'article_comment_watcher_bloc.dart';

@freezed
class ArticleCommentWatcherState with _$ArticleCommentWatcherState {
  const factory ArticleCommentWatcherState.initial() = _Initial;
  const factory ArticleCommentWatcherState.loading() = _Loading;
  const factory ArticleCommentWatcherState.error(String message) = _Error;
  const factory ArticleCommentWatcherState.loaded(List<Comment> comments) = _Loaded;
}
