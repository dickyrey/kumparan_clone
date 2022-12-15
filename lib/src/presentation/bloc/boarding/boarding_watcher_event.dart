part of 'boarding_watcher_bloc.dart';

@freezed
class BoardingWatcherEvent with _$BoardingWatcherEvent {
  const factory BoardingWatcherEvent.fetchBoardingList() = _FetchBoardingList;
}
