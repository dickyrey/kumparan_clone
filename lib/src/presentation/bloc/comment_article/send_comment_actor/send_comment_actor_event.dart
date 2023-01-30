part of 'send_comment_actor_bloc.dart';

@freezed
class SendCommentActorEvent with _$SendCommentActorEvent {
  const factory SendCommentActorEvent.init() = _Init;
  
  const factory SendCommentActorEvent.sendComment({
    required String id,
    required String comment,
  }) = _SendComment;
}
