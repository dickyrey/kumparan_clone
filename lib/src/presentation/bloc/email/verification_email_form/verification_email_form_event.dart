part of 'verification_email_form_bloc.dart';

@freezed
class VerificationEmailFormEvent with _$VerificationEmailFormEvent {
  const factory VerificationEmailFormEvent.onFinished() = _OnFinished;
  const factory VerificationEmailFormEvent.startTimeOut(CountdownController controller) = _StartTimeOut;
  const factory VerificationEmailFormEvent.resendEmail(String email) = _ResendEmail;
}
