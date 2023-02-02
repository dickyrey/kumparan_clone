part of 'verification_email_form_bloc.dart';

@freezed
class VerificationEmailFormState with _$VerificationEmailFormState {
  const factory VerificationEmailFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required bool isTimeoutDone,
  }) = _VerificationEmailFormState;

  factory VerificationEmailFormState.initial() =>
      const _VerificationEmailFormState(
        state: RequestState.empty,
        message: '',
        isSubmitting: false,
        isTimeoutDone: false,
      );
}
