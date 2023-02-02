part of 'change_to_moderated_actor_bloc.dart';

@freezed
class ChangeToModeratedActorEvent with _$ChangeToModeratedActorEvent {
  const factory ChangeToModeratedActorEvent.sendToModerated(String id) = _SendToModerated;
}
