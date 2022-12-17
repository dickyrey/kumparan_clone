part of 'verification_email_bloc.dart';

@freezed
class VerificationEmailState with _$VerificationEmailState {
  const factory VerificationEmailState({
    required bool isTimeoutDone,
  }) = _VerificationEmailState;

  factory VerificationEmailState.initial() => const _VerificationEmailState(
    isTimeoutDone: false,
  );
}
