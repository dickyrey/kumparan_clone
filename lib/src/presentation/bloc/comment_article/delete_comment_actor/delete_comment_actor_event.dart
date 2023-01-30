part of 'delete_comment_actor_bloc.dart';

@freezed
class DeleteCommentActorEvent with _$DeleteCommentActorEvent {
  const factory DeleteCommentActorEvent.init() = _Init;
  const factory DeleteCommentActorEvent.deletePressed({
    required String id,
    required int userId,
  }) = _DeletePressed;
}
