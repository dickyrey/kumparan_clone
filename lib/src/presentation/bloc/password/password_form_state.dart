part of 'password_form_bloc.dart';

@freezed
class PasswordFormState with _$PasswordFormState {
  const factory PasswordFormState({
    required RequestState result,
    required String password,
    required String repeatPassword,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _PasswordFormState;

  factory PasswordFormState.initial() => const PasswordFormState(
        result: RequestState.empty,
        password: '',
        repeatPassword: '',
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
