part of 'change_to_moderated_actor_bloc.dart';

@freezed
class ChangeToModeratedActorState with _$ChangeToModeratedActorState {
  const factory ChangeToModeratedActorState.initial() = _Initial;
  const factory ChangeToModeratedActorState.loading() = _Loading;
  const factory ChangeToModeratedActorState.error(String msg) = _Error;
  const factory ChangeToModeratedActorState.success() = _Success;
}
