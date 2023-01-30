part of 'my_article_watcher_bloc.dart';

@freezed
class MyArticleWatcherEvent with _$MyArticleWatcherEvent {
  const factory MyArticleWatcherEvent.fetchDraftedArticle() = _FetchDraftedArticle;
  const factory MyArticleWatcherEvent.fetchModeratedArticle() = _FetchModeratedArticle;
  const factory MyArticleWatcherEvent.fetchRejectedArticle() = _FetchRejectedArticle;
  const factory MyArticleWatcherEvent.fetchPublishedArticle() = _FetchPublishedArticle;
  const factory MyArticleWatcherEvent.fetchBannedArticle() = _FetchBannedArticle;
}
