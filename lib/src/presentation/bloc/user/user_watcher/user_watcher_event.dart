part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherEvent with _$UserWatcherEvent {
  const factory UserWatcherEvent.init() = _Init;
  const factory UserWatcherEvent.fetchUser() = _FetchUser;
}
