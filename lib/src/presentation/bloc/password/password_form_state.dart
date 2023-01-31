part of 'password_form_bloc.dart';

@freezed
class PasswordFormState with _$PasswordFormState {
  const factory PasswordFormState({
    required RequestState state,
    required String message,
    required String password,
    required String repeatPassword,
    required bool obscureText,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _PasswordFormState;

  factory PasswordFormState.initial() => const PasswordFormState(
        state: RequestState.empty,
        message: '',
        password: '',
        repeatPassword: '',
        obscureText: true,
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
