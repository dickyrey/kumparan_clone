part of 'phone_number_form_bloc.dart';

@freezed
class PhoneNumberFormState with _$PhoneNumberFormState {
  const factory PhoneNumberFormState({
    required RequestState result,
    required String phoneNumber,
    required bool isSubmitting,
    required bool isShowErrorMessages,
  }) = _PhoneNumberFormState;

  factory PhoneNumberFormState.initial() => const PhoneNumberFormState(
        result: RequestState.empty,
        phoneNumber: '',
        isSubmitting: false,
        isShowErrorMessages: false,
      );
}
