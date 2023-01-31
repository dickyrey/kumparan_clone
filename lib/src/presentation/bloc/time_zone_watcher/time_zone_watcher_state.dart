part of 'time_zone_watcher_bloc.dart';

@freezed
class TimeZoneWatcherState with _$TimeZoneWatcherState {
  const factory TimeZoneWatcherState({
    required RequestState state,
    required String message,
    required String dateTime,
  }) = _Initial;
  factory TimeZoneWatcherState.initial() {
    return const TimeZoneWatcherState(
      state: RequestState.empty,
      message: '',
      dateTime: '',
    );
  }
}
