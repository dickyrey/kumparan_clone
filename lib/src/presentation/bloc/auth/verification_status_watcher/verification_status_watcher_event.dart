part of 'verification_status_watcher_bloc.dart';

@freezed
class VerificationStatusWatcherEvent with _$VerificationStatusWatcherEvent {
  const factory VerificationStatusWatcherEvent.fetchStatus() = _FetchStatus;
}
