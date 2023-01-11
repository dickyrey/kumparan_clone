part of 'auth_watcher_bloc.dart';

@freezed
class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState.initial() = _Initial;
  const factory AuthWatcherState.authInProgress() = _AuthInProgress;
  const factory AuthWatcherState.authInFailure(String message) = _AuthInFailure;
  const factory AuthWatcherState.authenticated() = _Authenticated;
  const factory AuthWatcherState.notAuthenticated() = _NotAuthenticated;
}
