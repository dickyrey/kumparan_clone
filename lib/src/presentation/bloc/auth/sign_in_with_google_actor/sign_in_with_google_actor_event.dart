part of 'sign_in_with_google_actor_bloc.dart';

@freezed
class SignInWithGoogleActorEvent with _$SignInWithGoogleActorEvent {
  const factory SignInWithGoogleActorEvent.googleSignIn() = _GoogleSignIn;
}
