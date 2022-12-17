part of 'verification_email_bloc.dart';

@freezed
class VerificationEmailEvent with _$VerificationEmailEvent {
  const factory VerificationEmailEvent.onFinished() = _OnFinished;
  const factory VerificationEmailEvent.startTimeOut(CountdownController controller) = _StartTimeOut;
}
