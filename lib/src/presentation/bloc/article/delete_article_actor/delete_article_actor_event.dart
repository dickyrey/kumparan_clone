part of 'delete_article_actor_bloc.dart';

@freezed
class DeleteArticleActorEvent with _$DeleteArticleActorEvent {
  const factory DeleteArticleActorEvent.delete(String id) = _Delete;
}
