part of 'article_comment_watcher_bloc.dart';

@freezed
class ArticleCommentWatcherEvent with _$ArticleCommentWatcherEvent {
  const factory ArticleCommentWatcherEvent.fetchComments(String id) = _FetchComments;
  const factory ArticleCommentWatcherEvent.refreshComments(String id) = _RefreshComments;
}
