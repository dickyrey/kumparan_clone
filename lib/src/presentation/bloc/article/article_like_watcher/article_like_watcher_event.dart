part of 'article_like_watcher_bloc.dart';

@freezed
class ArticleLikeWatcherEvent with _$ArticleLikeWatcherEvent {
  const factory ArticleLikeWatcherEvent.fetchLikeStatus(String id) = _FetchLikeStatus;
  const factory ArticleLikeWatcherEvent.likePressed(String id) = _LikePressed;
}
