part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.initial() = _Initial;
  const factory LoginFormEvent.obscureTextPressed() = _ObscureTextPressed;
  const factory LoginFormEvent.signInPressed() = _SignInPressed;
  const factory LoginFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory LoginFormEvent.passwordOnChanged(String password) = _PasswordOnChanged;
}
