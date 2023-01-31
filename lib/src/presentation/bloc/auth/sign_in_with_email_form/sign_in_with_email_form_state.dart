part of 'sign_in_with_email_form_bloc.dart';

@freezed
class SignInWithEmailFormState with _$SignInWithEmailFormState {
  const factory SignInWithEmailFormState({
    required RequestState state,
    required String message,
    required String email,
    required String password,
    required bool isSubmitting,
    required bool obscureText,
  }) = _SignInWithEmailFormState;

  factory SignInWithEmailFormState.initial() => const SignInWithEmailFormState(
        state: RequestState.empty,
        message: '',
        email: '',
        password: '',
        isSubmitting: false,
        obscureText: true,
      );
}
