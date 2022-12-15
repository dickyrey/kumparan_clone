part of 'boarding_watcher_bloc.dart';

@freezed
class BoardingWatcherState with _$BoardingWatcherState {
  const factory BoardingWatcherState.initial() = _Initial;
  const factory BoardingWatcherState.loading() = _Loading;
  const factory BoardingWatcherState.error(String message) = _Error;
  const factory BoardingWatcherState.loaded(List<Boarding> boarding) = _Loaded;
}
