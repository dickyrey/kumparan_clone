part of 'forgot_password_form_bloc.dart';

@freezed
class ForgotPasswordFormState with _$ForgotPasswordFormState {
  const factory ForgotPasswordFormState({
    required RequestState result,
    required String email,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _ForgotPasswordFormState;

  factory ForgotPasswordFormState.initial() => const ForgotPasswordFormState(
        result: RequestState.empty,
        email: '',
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
