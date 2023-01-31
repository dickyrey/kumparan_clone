part of 'verification_status_watcher_bloc.dart';

@freezed
class VerificationStatusWatcherState with _$VerificationStatusWatcherState {
  const factory VerificationStatusWatcherState.initial() = _Initial;
  const factory VerificationStatusWatcherState.loading() = _Loading;
  const factory VerificationStatusWatcherState.error(String msg) = _Error;
  const factory VerificationStatusWatcherState.loaded(VerificationStatus status) = _Loaded;
}
