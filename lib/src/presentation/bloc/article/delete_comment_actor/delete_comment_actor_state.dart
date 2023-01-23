part of 'delete_comment_actor_bloc.dart';

@freezed
class DeleteCommentActorState with _$DeleteCommentActorState {
  const factory DeleteCommentActorState.initial() = _Initial;
  const factory DeleteCommentActorState.deleteInProgress() = _DeleteInProgress;
  const factory DeleteCommentActorState.deleteInFailure(String msg) = _DeleteInFailure;
  const factory DeleteCommentActorState.deleteInSuccess() = _DeleteInSuccess;
}
