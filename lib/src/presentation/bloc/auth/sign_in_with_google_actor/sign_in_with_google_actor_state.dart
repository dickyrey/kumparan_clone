part of 'sign_in_with_google_actor_bloc.dart';

@freezed
class SignInWithGoogleActorState with _$SignInWithGoogleActorState {
  const factory SignInWithGoogleActorState.initial() = _Initial;
  const factory SignInWithGoogleActorState.signInProgress() = _SignInProgress;
  const factory SignInWithGoogleActorState.signInFailure(String message) = _SignInFailure;
  const factory SignInWithGoogleActorState.signInSuccess() = _SignInSuccess;
}
