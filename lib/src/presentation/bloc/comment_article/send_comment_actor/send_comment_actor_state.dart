part of 'send_comment_actor_bloc.dart';

@freezed
class SendCommentActorState with _$SendCommentActorState {
  const factory SendCommentActorState.initial() = _Initial;
  const factory SendCommentActorState.sendProgress() = _SendProgress;
  const factory SendCommentActorState.sendFailure(String msg) = _SendFailure;
  const factory SendCommentActorState.sendSuccess() = _SendSuccess;
}
