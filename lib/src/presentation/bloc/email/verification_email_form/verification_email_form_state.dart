part of 'verification_email_form_bloc.dart';

@freezed
class VerificationEmailFormState with _$VerificationEmailFormState {
  const factory VerificationEmailFormState({
    required bool isTimeoutDone,
  }) = _VerificationEmailFormState;

  factory VerificationEmailFormState.initial() => const _VerificationEmailFormState(
    isTimeoutDone: false,
  );
}
