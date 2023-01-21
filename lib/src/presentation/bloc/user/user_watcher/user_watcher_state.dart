part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = _Initial;
  const factory UserWatcherState.loading() = _Loading;
  const factory UserWatcherState.error(String message) = _Error;
  const factory UserWatcherState.loaded(User user) = _Loaded;
}
