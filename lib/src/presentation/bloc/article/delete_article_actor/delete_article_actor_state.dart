part of 'delete_article_actor_bloc.dart';

@freezed
class DeleteArticleActorState with _$DeleteArticleActorState {
  const factory DeleteArticleActorState.initial() = _Initial;
  const factory DeleteArticleActorState.loading() = _Loading;
  const factory DeleteArticleActorState.error(String message) = _Error;
  const factory DeleteArticleActorState.success() = _Success;
}
