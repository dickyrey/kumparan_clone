part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required RequestState result,
    required String email,
    required String password,
    required bool isSubmitting,
    required bool isShowErrorMessages,
    required bool obscureText,
  }) = _LoginFormState;

  factory LoginFormState.initial() => const LoginFormState(
        result: RequestState.empty,
        email: '',
        password: '',
        isSubmitting: false,
        isShowErrorMessages: false,
        obscureText: true,
      );
}
