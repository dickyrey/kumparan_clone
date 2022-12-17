part of 'forgot_password_form_bloc.dart';

@freezed
class ForgotPasswordFormEvent with _$ForgotPasswordFormEvent {
  const factory ForgotPasswordFormEvent.initial() = _Initial;
  const factory ForgotPasswordFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory ForgotPasswordFormEvent.sendPressed() = _SendPressed;
}
