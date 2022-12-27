part of 'phone_number_form_bloc.dart';

@freezed
class PhoneNumberFormEvent with _$PhoneNumberFormEvent {
  const factory PhoneNumberFormEvent.initial() = _Initial;
  const factory PhoneNumberFormEvent.phoneNumberOnChanged(String phoneNumber) = _PhoneNumberOnChanged;
  const factory PhoneNumberFormEvent.sendPressed() = _SendPressed;
}
