part of 'verification_email_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState({
    required bool isTimeoutDone,
  }) = _EmailVerificationState;

  factory EmailVerificationState.initial() => const _EmailVerificationState(
    isTimeoutDone: false,
  );
}
