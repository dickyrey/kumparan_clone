part of 'article_like_watcher_bloc.dart';

@freezed
class ArticleLikeWatcherState with _$ArticleLikeWatcherState {
  const factory ArticleLikeWatcherState.initial() = _Initial;
  const factory ArticleLikeWatcherState.unliked() = _Unliked;
  const factory ArticleLikeWatcherState.liked() = _Liked;
}
