part of 'time_zone_watcher_bloc.dart';

@freezed
class TimeZoneWatcherEvent with _$TimeZoneWatcherEvent {
  const factory TimeZoneWatcherEvent.fetchTimeZone() = _FetchTimeZone;
}
