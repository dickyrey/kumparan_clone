part of 'auth_watcher_bloc.dart';

@freezed
class AuthWatcherEvent with _$AuthWatcherEvent {
  const factory AuthWatcherEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthWatcherEvent.signOut() = _SignOut;
}
