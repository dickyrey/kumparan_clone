part of 'sign_in_with_email_form_bloc.dart';

@freezed
class SignInWithEmailFormEvent with _$SignInWithEmailFormEvent {
  const factory SignInWithEmailFormEvent.initial() = _Initial;
  const factory SignInWithEmailFormEvent.obscureTextPressed() = _ObscureTextPressed;
  const factory SignInWithEmailFormEvent.signInPressed() = _SignInPressed;
  const factory SignInWithEmailFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory SignInWithEmailFormEvent.passwordOnChanged(String password) = _PasswordOnChanged;

}
