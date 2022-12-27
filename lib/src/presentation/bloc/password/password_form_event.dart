part of 'password_form_bloc.dart';

@freezed
class PasswordFormEvent with _$PasswordFormEvent {
  const factory PasswordFormEvent.initial() = _Initial;
  const factory PasswordFormEvent.passwordOnChanged(String password) = _PasswordOnChanged;
  const factory PasswordFormEvent.repeatPasswordOnChanged(String repeatPassword) = _RepeatPasswordOnChanged;
  const factory PasswordFormEvent.sendPressed() = _SendPressed;
}
