part of 'like_article_watcher_bloc.dart';

@freezed
class LikeArticleWatcherState with _$LikeArticleWatcherState {
  const factory LikeArticleWatcherState.initial() = _Initial;
  const factory LikeArticleWatcherState.unliked() = _Unliked;
  const factory LikeArticleWatcherState.liked() = _Liked;
}
