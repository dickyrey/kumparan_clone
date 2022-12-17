part of 'verification_email_bloc.dart';

@freezed
class EmailVerificationEvent with _$EmailVerificationEvent {
  const factory EmailVerificationEvent.onFinished() = _OnFinished;
  const factory EmailVerificationEvent.startTimeOut(CountdownController controller) = _StartTimeOut;
}
