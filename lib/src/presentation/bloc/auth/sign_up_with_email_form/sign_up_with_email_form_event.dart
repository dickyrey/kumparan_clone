part of 'sign_up_with_email_form_bloc.dart';

@freezed
class SignUpWithEmailFormEvent with _$SignUpWithEmailFormEvent {
  const factory SignUpWithEmailFormEvent.initial() = _Initial;
  const factory SignUpWithEmailFormEvent.emailOnChanged(String val) = _EmailOnChanged;
  const factory SignUpWithEmailFormEvent.signUpPressed() = _SignUpPressed;
}
