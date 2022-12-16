part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.initial() = _Initial;
  const factory RegisterFormEvent.signInPressed() = _SignInPressed;
  const factory RegisterFormEvent.emailOnChanged(String email) = _EmailOnChanged;
}
